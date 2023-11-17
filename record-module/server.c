#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <netinet/in.h>
#include <string.h>
#include <sys/socket.h>
#include "record.h"


//define for socket
#define PORT 8080

// define for collecting data
#define FRAME_TO_CAPTURE 1024

int SAMPLE_RATE = 44100;
int CHANNELS = 2;
int BITS_PER_SAMPLE  = 16;
int SAMPLE_FORMAT = SND_PCM_FORMAT_S16_LE; 

int LIFE_TIME = 0;
int STOP = 0;
int START = 0, END = 0; 
int wait_t = 0;
// int status = 0;


//define for multi-threading
int check = 0;
pthread_t tid1, tid2, tid3;
pthread_attr_t attr;


void* handler2 (void* data) {
    initialize(SND_PCM_STREAM_CAPTURE, SAMPLE_FORMAT, SAMPLE_RATE, CHANNELS);
    implement (FRAME_TO_CAPTURE, SAMPLE_FORMAT, CHANNELS, SAMPLE_RATE, BITS_PER_SAMPLE);
    snd_pcm_close(handle);
}


void* handler3 (void* data) {
    pthread_t tid = pthread_self();
    printf("Hello from thread 3, the process: %u\n", getpid());

}





void* handler1 (void* data) {
     int server_fd, new_socket;
    ssize_t valread;
    struct sockaddr_in address;
    int opt = 1;
    socklen_t addrlen = sizeof(address);
    char tcp_queue[1024] = { 0 };
 
    // Creating socket file descriptor
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        perror("socket failed");
        exit(EXIT_FAILURE);
    }
 
    // Forcefully attaching socket to the port 8080
    if (setsockopt(server_fd, SOL_SOCKET,
                   SO_REUSEADDR, &opt,
                   sizeof(opt))) {
        perror("setsockopt");
        exit(EXIT_FAILURE);
    }
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(PORT);
 
    // Forcefully attaching socket to the port 8080
    if (bind(server_fd, (struct sockaddr*)&address,
             sizeof(address))
        < 0) {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }
    if (listen(server_fd, 3) < 0) {
        perror("listen");
        exit(EXIT_FAILURE);
    }

    while(1) {

    if ((new_socket
         = accept(server_fd, (struct sockaddr*)&address,
                  &addrlen))
        < 0) {
        perror("accept");
        exit(EXIT_FAILURE);
    }

    if(fork() == 0) {

    valread = read(new_socket, tcp_queue,
                   1024 - 1); // subtract 1 for the null
                              // terminator at the end
    printf("%s\n", tcp_queue);
    if(strcmp(tcp_queue, "start") == 0) {
        if(pthread_create(&tid2, NULL, handler2, NULL)) {
        perror("Failure!");
        exit(2);
    }
    }
    if(strcmp(tcp_queue, "end") == 0) {
        if(pthread_create(&tid3, NULL, handler3, NULL)) {
        perror("Failure!");
        exit(3);
    }
    }
    sleep(5);
    // closing the connected socket
    close(new_socket);
    }
    else {
    // closing the listening socket
    close(new_socket);
    }

    }
    return 0;
}


int main(int argc, char * argv[])
{
    // void* status;
    if(pthread_create(&tid1, NULL, handler1, NULL)) {
        perror("Failure!");
        exit(1);
    }
    pthread_join(tid1, NULL);
}

