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
int TIME_RECORD = 5; 
char RECORD_LOCATION[BUFFER_SIZE/4];
char device[36];

// control recoding status
int *recording;
int status = 0; 


//define for multi-threading
pthread_t ms, rc, ih1;
pthread_attr_t attr;
pthread_mutex_t lock; 

void *main_socket (void* data);
void *recording_handler (void* data);
void setup();
void *interupt_handle1(void *data);

// void debug() {
//     printf("Location: %s\n", RECORD_LOCATION);
//     printf("Sample rate: %d\n", SAMPLE_RATE);
//     printf("Sample width: %d\n", BITS_PER_SAMPLE);
//     printf("Sample format: %d\n", SAMPLE_FORMAT);
//     printf("Num of channels: %d\n", CHANNELS);
//     printf("Time per audio file: %d\n", TIME_RECORD);
// }

int main(int argc, char * argv[]) {
    setup();
    pthread_mutex_init(&lock, NULL);
    void* status;
    if(pthread_create(&ms, NULL, main_socket, NULL)) {
        perror("Failure!");
        exit(1);
    }
    pthread_join(ms, NULL);
}

void setup() {
    FILE* file = fopen("start_setting.txt", "r");
    char content[BUFFER_SIZE/4];
    fseek(file, 0, SEEK_SET);
    
    fgets(content, sizeof(content), file);
    content[strlen(content)-1] = '\0';
    strcpy(device, content);

    fgets(content, sizeof(content), file);
    content[strlen(content)-1] = '\0';
    strcpy(RECORD_LOCATION, content);

    fgets(content, sizeof(content), file);
    SAMPLE_RATE = atoi(content);

    fgets(content, sizeof(content), file);
    BITS_PER_SAMPLE = atoi(content);

    fgets(content, sizeof(content), file);
    SAMPLE_FORMAT = atoi(content);

    fgets(content, sizeof(content), file);
    CHANNELS = atoi(content);
    
    fgets(content, sizeof(content), file);
    TIME_RECORD = atoi(content);

    printf("Device: %s %ld\n", device, strlen(device));
    printf("Location: %s\n", RECORD_LOCATION);
    printf("Sample rate: %d\n", SAMPLE_RATE);
    printf("Sample width: %d\n", BITS_PER_SAMPLE);
    printf("Sample format: %d\n", SAMPLE_FORMAT);
    printf("Num of channels: %d\n", CHANNELS);
    printf("Time per audio file: %d\n", TIME_RECORD);

    fclose(file);
}

void *recording_handler (void* data) {
    pthread_mutex_lock(&lock);
    initialize(device, SND_PCM_STREAM_CAPTURE, SAMPLE_FORMAT, SAMPLE_RATE, CHANNELS);
    implement (FRAME_TO_CAPTURE, SAMPLE_FORMAT, CHANNELS, SAMPLE_RATE, BITS_PER_SAMPLE, recording, RECORD_LOCATION);
    snd_pcm_close(handle);
    pthread_mutex_unlock(&lock);
    pthread_exit(NULL); 
}

void* main_socket (void* data) {
    recording = &status; 
    int server_fd, new_socket;
    ssize_t valread;
    struct sockaddr_in address;
    int opt = 1;
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
    if (bind(server_fd, (struct sockaddr*)&address, sizeof(address)) < 0) {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }
    if (listen(server_fd, 3) < 0) {
        perror("listen");
        exit(EXIT_FAILURE);
    }

    while(1) {
        if ((new_socket = accept(server_fd, (struct sockaddr*)&address, &addrlen)) < 0) {
            perror("accept");
            exit(EXIT_FAILURE);
        }
        valread = read(new_socket, buffer, BUFFER_SIZE - 1); // subtract 1 for the null
                                // terminator at the end
        printf("The buffer: %s\n", buffer);

        char content[BUFFER_SIZE/4];
        char command;
        sscanf(buffer, "-%c:%s", &command, content);
        printf("Command: %c\n", command);
        printf("Content: %s\n", content);

        if(command == START) {
            status = 1;
            if(pthread_create(&rc, NULL, recording_handler, NULL)) {
                perror("Failure!");
                exit(2);
            }
        }
        else if(command == END) {
            status = 0;
        }
        else if(command == UPDATE) {
            setup();
            if(pthread_create(&ih1, NULL, interupt_handle1, NULL)) {
                perror("Failure!");
                exit(2);
            }
        }
        

        for(int i = 0; i < BUFFER_SIZE; ++i) buffer[i] = 0;
        // sleep(5);
        // closing the connected socket
        close(new_socket);

        usleep(100000);
    }
    return 0;
}

void *interupt_handle1(void *data) {
    status = 0;
    sleep(1);
    status = 1; 
    if(pthread_create(&rc, NULL, recording_handler, NULL)) {
        perror("Failure!");
        exit(2);
    }
    else printf("Handling\n");
}