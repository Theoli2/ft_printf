# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tlivroze <tlivroze@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/29 17:04:59 by tlivroze          #+#    #+#              #
#    Updated: 2023/02/04 01:20:44 by tlivroze         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRCS = ft_printf.c \
		ft_printchar.c \
		ft_printdecimal.c \
		ft_printstring.c \
		ft_printpercent.c \
		ft_printunsigned.c \
		ft_printhexa.c \
		ft_printadress.c \

OBJS = $(SRCS:.c=.o)

HEADER = ft_printf.h

all: $(NAME)

$(NAME) : $(OBJS)
	ar rcs $@ $^

$(OBJS) : %.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean :
	$(RM) $(OBJS)

fclean :
	$(RM) $(NAME)

re : fclean
	$(MAKE)

.PHONY : all clean fclean re