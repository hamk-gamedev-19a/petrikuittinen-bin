# for C++ define  CC = g++
CC = gcc
CFLAGS  = -g -Wall -O
TARGET = converter

# typing 'make' will invoke this
default: $(TARGET)

# create executable
$(TARGET):  main.o conversion.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o conversion.o

# make object files
main.o:  main.c conversion.h
	$(CC) $(CFLAGS) -c main.c

conversion.o:  conversion.c conversion.h
	$(CC) $(CFLAGS) -c conversion.c

# To start over from scratch, type 'make clean'.
clean:
	rm $(TARGET) *.o
