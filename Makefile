all:
	$(CC) -lm -Wall -Wextra -Werror -fsanitize=address main.c -o main
