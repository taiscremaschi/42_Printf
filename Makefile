# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbolzan- <tbolzan-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/16 16:29:22 by tbolzan-          #+#    #+#              #
#    Updated: 2023/04/19 12:05:48 by tbolzan-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Werror -Wextra

RM = rm -f

SRC = ft_hexad.c ft_nbrunsigned.c ft_pointer.c ft_printf.c ft_putchar.c ft_putnbr.c ft_putstr.c

SRCO = $(SRC:.c=.o)

CME = ar -rcs

$(NAME):	$(SRCO)
			$(CME) $(NAME) $(SRCO)

all:	$(NAME)

clean:
		$(RM) $(SRCO)

fclean:	clean
		$(RM) $(NAME)

re:	fclean all

run:	re
		$(CC) $(CFLAGS) main.c -L. -lftprintf
		
.PHONY: all clean fclean re