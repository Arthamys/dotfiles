##
## $FILE for $PROJ in $PATH
## 
## Made by $NAME
## Login   <$NICK@epitech.net>
## 
## Started on  $DATE $NAME
## Last update $DATE $NAME
##

NAME =		

RM =		rm -rf

CC =		gcc

SRCDIR =	./src

SRC =		${SRCDIR}/main.c

OBJS =		${SRC:.c=.o}

CFLAGS +=	-Iinclude -W -Wextra

all: ${NAME}

$(NAME): ${OBJS}
	${CC} ${OBJS} -o ${NAME}

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re
