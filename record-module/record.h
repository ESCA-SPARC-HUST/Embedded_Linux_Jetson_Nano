#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <alsa/asoundlib.h>
#include <unistd.h>

// #define RECORD_DURATION 't' // command syntax:   -RCD value
// #define START_TIME 's'// command syntax:   -ST hh:mm:ss
// #define END_TIME 'e'// command syntax:   -ET hh:mm:ss
// #define FRAME_RATE 'F'// command syntax:   -FR value 
// #define SAMPLE_WIDTH 'S'// command syntax:   -SW value
// #define NCHANNELS 'C' // command syntax: -CNL value 
// #define MODE 'm' // command syntax: -m value


typedef struct {
    char chunk_id[4];
    unsigned int chunk_size;
    char format[4];
    char subchunk1_id[4];
    unsigned int subchunk1_size;
    unsigned short audio_format;
    unsigned short num_CHANNELS;
    unsigned int SAMPLE_RATE;
    unsigned int byte_rate;
    unsigned short block_align;
    unsigned short bits_per_sample;
    char subchunk2_id[4];
    unsigned int subchunk2_size;
} WAVHeader;

snd_pcm_t *handle;
// int status = 0;


int initialize(char device[], int sound_stream, int sample_format, int sample_rate, int channels);

int implement (int frame_to_capture, int sample_format, int channels, int sample_rate, int bits_per_sample, int *recording, char location[]);

void writeWAVHeader(FILE *file, unsigned int sampleRate, unsigned short num_CHANNELS, unsigned short bits_per_sample, unsigned int data_size);