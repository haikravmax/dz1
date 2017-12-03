CC = gcc

PROGRAMMA=program1
DIR_1 = ./../direct1
DIR_2 = ./../direct2
EXE = ./../execfile

SOUR = $(wildcard *.c)
OBJ = $(SOURCES:.c=.o)

OBJ = $(addprefix $(DIR_1)/,$(OBJ))

all: $(OBJ) $(PROGRAMMA)

%.o:%.c
	$(CC) -c $< -o $@

$(PROGRAMMA): $(OBJ)
	$(CC) $(OBJ) -o $@

clean:
	rm -rf *.o $(PROGRAMMA)
