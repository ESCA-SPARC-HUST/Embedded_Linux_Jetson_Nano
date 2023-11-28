#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <netinet/in.h>
#include <string.h>
#include <sys/socket.h>
#include "record.h"
#include "command.h"

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
int *recording;
int status = 0; 

void setup() {
    FILE* file = fopen("start_setting.txt", "r");
    char content[BUFFER_SIZE/4];
    fseek(file, 0, SEEK_SET);
    
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

    printf("Location: %s\n", RECORD_LOCATION);
    printf("Sample rate: %d\n", SAMPLE_RATE);
    printf("Sample width: %d\n", BITS_PER_SAMPLE);
    printf("Sample format: %d\n", SAMPLE_FORMAT);
    printf("Num of channels: %d\n", CHANNELS);
    printf("Time per audio file: %d\n", TIME_RECORD);

    fclose(file);
}

void *recording_handler (void* data) {
    initialize(SND_PCM_STREAM_CAPTURE, SAMPLE_FORMAT, SAMPLE_RATE, CHANNELS);
    implement (FRAME_TO_CAPTURE, SAMPLE_FORMAT, CHANNELS, SAMPLE_RATE, BITS_PER_SAMPLE, recording, RECORD_LOCATION);
    snd_pcm_close(handle);
    pthread_exit(NULL); 
}

int main() {
    setup();
    pthread_t thread; 
    pthread_attr_t attr;
    size_t stacksize;
    pthread_attr_init(&attr);
    pthread_attr_getstacksize(&attr, &stacksize);
    pthread_attr_setstacksize(&attr, stacksize*10);
    pthread_create(&thread, &attr,recording_handler, NULL);
    pthread_join(thread, NULL);
    // initialize(SND_PCM_STREAM_CAPTURE, SAMPLE_FORMAT, SAMPLE_RATE, CHANNELS);
    // implement (FRAME_TO_CAPTURE, SAMPLE_FORMAT, CHANNELS, SAMPLE_RATE, BITS_PER_SAMPLE, recording, RECORD_LOCATION);
    // snd_pcm_close(handle);
    printf("Thread stack size = %ld bytes \n", stacksize);
}