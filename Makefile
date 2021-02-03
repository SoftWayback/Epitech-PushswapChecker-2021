##
## EPITECH PROJECT, 2021
## la piscine du fun
## File description:
## Makefile
##



CC	=	ghc

RM	=	rm -f

SRC	= sorting.hs \
	  Main.hs

OBJ	=	$(SRC:.cpp=.o)

NAME	=	pushswap_checker

all		: $(NAME)

$(NAME):	$(OBJ)
		$(CC) --make -o $(NAME) $(OBJ)

clean:
		$(RM) *.hi
		$(RM) *.o

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

.PHONY:		all clean fclean re
