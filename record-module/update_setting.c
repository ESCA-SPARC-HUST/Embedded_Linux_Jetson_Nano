#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <netinet/in.h>
#include <string.h>
#include <sys/socket.h>
#include "command.h"
#include <arpa/inet.h>

#define BUFFER_SIZE 1024
#define RCV_PORT 8000
#define SEND_PORT 8080 
#define message "-U"

void write_settings(int n, char replace_content[]);
void send_command();

int main(int argc, char *argv[]) {
    char cmd;
    if (argc > 0) sscanf(argv[1], "-%c", &cmd);
    printf("-%c %s\n", cmd, argv[2]);
    if(cmd == LOCATION) {
        strcat(argv[2], "\n");
        write_settings(1, argv[2]);
        // debug();
    }
    else if(cmd == NCHANNELS) {
        strcat(argv[2], "\n");
        write_settings(5, argv[2]);
        // debug();
    }
    else if(cmd == FRAME_RATE) {
        strcat(argv[2], "\n");
        write_settings(2, argv[2]);
    } 
    else if(cmd == SAMPLE_WIDTH) {
        strcat(argv[2], "\n");
        write_settings(3, argv[2]);
        // debug();
    }
    else if(cmd == SFORMAT) {
        strcat(argv[2], "\n");
        write_settings(4, argv[2]);
        // debug();
    }
    else if(cmd == RECORD_DURATION) {
        strcat(argv[2], "\n");
        write_settings(6, argv[2]);
        // debug();
    }
    send_command();
    return 0;
}

void send_command() {
    int status, valread, client_fd;
    struct sockaddr_in serv_addr;
    char buffer[BUFFER_SIZE] = { 0 };
    if ((client_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        printf("\n Socket creation error \n");
        return;
    }
 
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(SEND_PORT);
 
    // Convert IPv4 and IPv6 addresses from text to binary
    // form
    if (inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr) <= 0) {
        printf("\nInvalid address/ Address not supported \n");
        return;
    }
 
    if ((status = connect(client_fd, (struct sockaddr*)&serv_addr, sizeof(serv_addr))) < 0) {
        printf("\nConnection Failed \n");
        return;
    }
    send(client_fd, message, strlen(message), 0);
    printf("\"message\" message sent\n");
    valread = read(client_fd, buffer, BUFFER_SIZE - 1); // subtract 1 for the null terminator at the end
    printf("%s\n", buffer);
}

void write_settings(int n, char replace_content[]) {
    FILE *file = fopen("start_setting.txt", "r");
    char content[16][128];
    int no_line = 1; 
    while (fgets(content[no_line], sizeof(content[no_line]), file)) {
        no_line++; 
    }
    fclose(file);
    strcpy(content[n], replace_content);
    file = fopen("start_setting.txt", "w");
    for(int i = 1; i < no_line; i++) {
        fputs(content[i], file);
    }
    fclose(file);
}

