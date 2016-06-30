CC = gcc
CFLAG = -c -Wall
EXECUTE = iceprogduino
NAME = iceprogduino

all: $(EXECUTE)

$(EXECUTE): $(NAME).o
	$(CC) $(NAME).o -o $(EXECUTE)
	
clean:
	rm -rf *.o $(EXECUTE)

install:
	cp $(EXECUTE) /usr/local/bin/$(EXECUTE)

