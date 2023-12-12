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
#define message "-u"
#define filename "time_schedule.txt"
#define path " /home/minkeisme/Workplace/SPARC/ESCA/Embedded_Linux_Jetson_Nano/record-module/client"

void write_settings(int n, char replace_content[]);
void send_command();
void delete_schedule(int n);
void add_schedule(char content[]);

int main(int argc, char *argv[]) {
    char cmd;
    if (argc > 1) {
        sscanf(argv[1], "-%c", &cmd);
        for (int i = 0; i < strlen(argv[2]); i++) {
            if (argv[2][i] == ':') argv[2][i] = ' ';   
        }
        printf("-%c %s\n", cmd, argv[2]);
    } 
    if(cmd == START_TIME) {
        strcat(argv[2], path);
        strcat(argv[2], " -S");
        add_schedule(argv[2]);
    }
    else if (cmd == END_TIME) {
        strcat(argv[2], path);
        strcat(argv[2], " -E");
        add_schedule(argv[2]);
    }
    else if (cmd == DELETE_SCHEDULE) {
        int No = atoi(argv[2]);
        delete_schedule(No);
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
    // printf("%s\n", buffer);
}

void delete_schedule(int n) {
    FILE *file = fopen(filename, "r");
    char content[256][256];
    int no_line = 1; 
    while (fgets(content[no_line], sizeof(content[no_line]), file)) {
        no_line++; 
    }
    fclose(file);
    file = fopen(filename, "w");
    for(int i = 1; i < no_line; i++) {
        if (i == n || i == n + 1 ) continue; 
        fputs(content[i], file);
    }
    fclose(file);
}

void add_schedule(char content[]) {
    FILE *file = fopen(filename, "a");
    if (ftell(file) != 0) fprintf(file, "\n");
    fputs(content, file);
    fclose(file);
}

