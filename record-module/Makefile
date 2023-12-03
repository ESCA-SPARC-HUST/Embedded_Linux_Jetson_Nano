CC=gcc
CFLAGS=-I.

all: server.c record.c client.c update_setting.c
	# $(CC) -o server server.c record.c -lasound -lpthread $(CFLAGS)
	$(CC) -o server server.c record.c -lasound -lpthread $(CFLAGS)
	$(CC) -o client client.c -lpthread $(CFLAGS)
	$(CC) -o update update_setting.c $(CFLAGS)
	$(CC) -o schedule update_crontab.c $(CFLAGS)