CC = g++
CPPFLAGS = -Wall -pedantic -std=c++11
CFLAGS = -g
target: question1

all:$(target)

OBJ_DIR = obj/
BIN_DIR = bin/
LIB_DIR = lib/ 

.PHONY: all clean
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)
$(BIN_DIR):
	mkdir -p $(BIN_DIR)
$(LIB_DIR):
	mkdir -p $(LIB_DIR)

clean: 
	rm -rf obj/ bin/ lib/ question1

$(OBJ_DIR)/question1.o: question1.cpp | $(OBJ_DIR)
	$(CC) -c $(CPPFLAGS) question1.cpp -o $(OBJ_DIR)/question1.o

$(BIN_DIR)/question1: $(OBJ_DIR)/question1.o | $(BIN_DIR)
	$(CC) $(CFLAGS) $(OBJ_DIR)/question1.o -o $(BIN_DIR)/question1

question1: $(BIN_DIR)/question1
	ln -sf $(BIN_DIR)/question1 question1
