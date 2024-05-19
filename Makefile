SRC = 	strlen.asm \
	strcmp.asm \
	strcpy.asm \
	strdup.asm

OBJ_FILES = $(SRC:.asm=.o)

NAME = libasm.a

CC = nasm

CFLAGS = -f elf64

%.o: %.asm
	$(CC) $(CFLAGS) -o $@ $<

$(NAME): $(OBJ_FILES)
	@ar r $(NAME) $(OBJ_FILES)

all: $(NAME)

clean:
	rm -f $(OBJ_FILES)
fclean: clean
	rm -f $(NAME)
re:
	fclean
	all

