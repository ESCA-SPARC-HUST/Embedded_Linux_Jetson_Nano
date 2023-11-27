#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <netinet/in.h>
#include <string.h>
#include <sys/socket.h>
#include "record.h"
#include "command.h"

//define for socket
#define PORT 8080
#define BUFFER_SIZE 1024

// define for collecting data
#define FRAME_TO_CAPTURE 1024

int SAMPLE_RATE = 44100;
int CHANNELS = 2;
int BITS_PER_SAMPLE  = 16;
int SAMPLE_FORMAT = SND_PCM_FORMAT_S16_LE; 

char RECORD_LOCATION[BUFFER_SIZE/4];

// control recoding status
int* recording;
int status = 0;

//define for multi-threading
pthread_t tid1, tid2;
pthread_attr_t attr;


void *recording_handler (void* data) {
    initialize(SND_PCM_STREAM_CAPTURE, SAMPLE_FORMAT, SAMPLE_RATE, CHANNELS);
    implement (FRAME_TO_CAPTURE, SAMPLE_FORMAT, CHANNELS, SAMPLE_RATE, BITS_PER_SAMPLE, recording, RECORD_LOCATION);
    snd_pcm_close(handle);
}


void* main_socket (void* data) {
    int server_fd, new_socket;
    ssize_t valread;
    struct sockaddr_in address;
    int opt = 1;
    recording = &status;
    socklen_t addrlen = sizeof(address);
    char buffer[BUFFER_SIZE] = { 0 };
 
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
        valread = read(new_socket, buffer,
                    BUFFER_SIZE - 1); // subtract 1 for the null
                                // terminator at the end
        printf("The buffer: %s\n", buffer);

        char content[BUFFER_SIZE/4];
        char command;
        sscanf(buffer, "-%c^%s", &command, content);
        printf("Command: %c\n", command);
        printf("Content: %s\n", content);

        if(command == START) {
            status = 1;
            if(pthread_create(&tid2, NULL, recording_handler, NULL)) {
                perror("Failure!");
                exit(2);
            }
        }
        else if(command == END) {
            status = 0;
        }
        else if(command == LOCATION) {
            strcpy(RECORD_LOCATION, content); 
            printf("Location: %s\n", RECORD_LOCATION);
        }
        else if(command == NCHANNELS) {
            CHANNELS = atoi(content);
        }
        else if(command == FRAME_RATE) {
            SAMPLE_RATE = atoi(content);
        } 
        else if(command == SAMPLE_WIDTH) {
            BITS_PER_SAMPLE = atoi(content);
        }

        for(int i = 0; i < BUFFER_SIZE; ++i) buffer[i] = 0;
        // sleep(5);
        // closing the connected socket
        close(new_socket);
    }
    return 0;
}



int main(int argc, char * argv[])
{
    void* status;
    if(pthread_create(&tid1, NULL, main_socket, NULL)) {
        perror("Failure!");
        exit(1);
    }
    pthread_join(tid1, NULL);
}

