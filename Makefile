OBJ      = main.o hello.o
LINKOBJ  = main.o hello.o
BIN      = hello
CFLAGS   = -ansi -std=c90 -Wall -Wextra -pedantic

.PHONY: all clean test

all: $(BIN)

test: $(BIN)
	./$(BIN)

clean:
	rm -f $(OBJ) $(BIN)

$(BIN): $(OBJ)
	$(CC) $(LINKOBJ) -o $(BIN)

main.o: src/main.c
	$(CC) -c src/main.c -o main.o $(CFLAGS)

hello.o: src/hello.c
	$(CC) -c src/hello.c -o hello.o $(CFLAGS)
