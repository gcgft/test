OBJ      = main.o hello.o
LINKOBJ  = main.o hello.o
BIN      = hello
CFLAGS   = -ansi -std=c90 -Wall -Wextra -pedantic

.PHONY: all clean

all: $(BIN)

clean:
	rm -f $(OBJ) $(BIN)

$(BIN): $(OBJ)
	$(CC) $(LINKOBJ) -o $(BIN)

main.o: main.c
	$(CC) -c main.c -o main.o $(CFLAGS)

hello.o: hello.c
	$(CC) -c hello.c -o hello.o $(CFLAGS)
