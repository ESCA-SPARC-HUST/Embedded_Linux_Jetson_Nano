#include "record.h"


int initialize(int sound_stream, int sample_format, int sample_rate, int channels) {

    int err;
    // Open the PCM device for recording
    if ((err = snd_pcm_open(&handle, "default", sound_stream, 0)) < 0) {
        printf("Cannot open PCM device: %s\n", snd_strerror(err));
        return EXIT_FAILURE;
    }

    // Set the desired parameters for the PCM device
    snd_pcm_hw_params_t *params;

    // Allocate hardware parameters object
    if ((err = snd_pcm_hw_params_malloc(&params)) < 0) {
        printf("Cannot allocate hardware parameter structure: %s\n", snd_strerror(err));
        return EXIT_FAILURE;
    }

    // Initialize hardware parameters with default values
    if ((err = snd_pcm_hw_params_any(handle, params)) < 0) {
        printf("Cannot initialize hardware parameter structure: %s\n", snd_strerror(err));
        return EXIT_FAILURE;
    }

    // Set desired sample format and sample rate
    if ((err = snd_pcm_hw_params_set_format(handle, params, sample_format)) < 0) {
        printf("Cannot set sample format: %s\n", snd_strerror(err));
        return EXIT_FAILURE;
    }
    if ((err = snd_pcm_hw_params_set_rate_near(handle, params, &sample_rate, 0)) < 0) {
        printf("Cannot set sample rate: %s\n", snd_strerror(err));
        return EXIT_FAILURE;
    }

    // Set desired number of CHANNELS
    if ((err = snd_pcm_hw_params_set_channels(handle, params, channels)) < 0) {
        printf("Cannot set channel count: %s\n", snd_strerror(err));
        return EXIT_FAILURE;
    }

    // Apply hardware parameters to the PCM device
    if ((err = snd_pcm_hw_params(handle, params)) < 0) {
        printf("Cannot set hardware parameters: %s\n", snd_strerror(err));
        return EXIT_FAILURE;
    }
    snd_pcm_hw_params_free(params);
    printf("Done!\n\n");
}



int implement (int frame_to_capture, int sample_format, int channels, int sample_rate, int bits_per_sample) { 
    // Implement recording audio until the end time set 
    // Allocate buffer for audio data
    char *buffer = (char *)malloc(frame_to_capture * snd_pcm_format_width(sample_format) / 8 * channels);
    if (buffer == NULL) {
        printf("Cannot allocate buffer\n");
        return EXIT_FAILURE;
    }

    // Open the output file
    char *filename = malloc(sizeof(char) * 36);

    time_t curr;  
    time(&curr);
    struct tm* curr_t = localtime(&curr);
    sprintf(filename, "/home/gianghandsome/record-module/Embedded_Linux_Jetson_Nano/record-module/data/audio-%d-%d-%d_%02d%02d%02d.wav", curr_t->tm_year + 1900, curr_t->tm_mon + 1, curr_t->tm_mday, curr_t->tm_hour, curr_t->tm_min, curr_t->tm_sec);
    FILE *output_file = fopen(filename, "wb");
    if (output_file == NULL) {
        printf("Cannot open output file\n");
        return EXIT_FAILURE;
    }
    free(filename);

    // Get the current time
    time_t mark = time(NULL);
    double anchor;
    // Start recording
    printf("Recording started.\n");
    
    // Record audio data 
    int err;
    int n = 0;
    while (n < 500) {
        if (err = snd_pcm_readi(handle, buffer, frame_to_capture) != frame_to_capture) {
            printf("Error reading from PCM device: %s\n", snd_strerror(err));
            break;
        }

        // Write the recorded audio data to the output file
        fwrite(buffer, sizeof(char) , frame_to_capture * snd_pcm_format_width(sample_format) / 8 * channels, output_file);
        // printf("Recording! %d\n", n);
        n++;
    }
    printf("Recording stopped.\nFinish!!");

    fseek(output_file, 0L, SEEK_END); 
  
    // calculating the size of the file 
    long int data_size = ftell(output_file); 



    // Write the WAV header to the file
    fseek(output_file, 0L, SEEK_SET);
    writeWAVHeader(output_file, sample_rate, channels, bits_per_sample, data_size);
    
    // Clean up
    fclose(output_file);
    free(buffer);
    printf("Recording finished. Audio saved to recorded.wav\n");
    // printf("TIME RECORDED: %d seconds\n", duration);
    return EXIT_SUCCESS;
}

void writeWAVHeader(FILE *file, unsigned int sampleRate, unsigned short num_CHANNELS, unsigned short bits_per_sample, unsigned int data_size) {
    WAVHeader header;

    // RIFF chunk
    strncpy(header.chunk_id, "RIFF", 4);
    header.chunk_size = data_size + sizeof(WAVHeader) - 8;
    strncpy(header.format, "WAVE", 4);

    // Format subchunk
    strncpy(header.subchunk1_id, "fmt ", 4);
    header.subchunk1_size = 16;
    header.audio_format = 1;
    header.num_CHANNELS = num_CHANNELS;
    header.SAMPLE_RATE = sampleRate;
    header.byte_rate = sampleRate * num_CHANNELS * bits_per_sample / 8;
    header.block_align = num_CHANNELS * bits_per_sample / 8;
    header.bits_per_sample = bits_per_sample;

    // Data subchunk
    strncpy(header.subchunk2_id, "data", 4);
    header.subchunk2_size = data_size;

    // Write the WAV header to the file
    fwrite(&header, sizeof(WAVHeader), 1, file);
}