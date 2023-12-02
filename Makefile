build-gcc:
	gcc -lm -Wall -Wextra -Werror -fsanitize=address main.c -o main

build-clang:
	clang -lm -Wall -Wextra -Werror -fsanitize=address main.c -o main
