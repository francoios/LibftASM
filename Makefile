# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frcugy <frcugy@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/04 12:31:24 by frcugy            #+#    #+#              #
#    Updated: 2015/03/05 18:08:01 by frcugy           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIB		=		libfts.a
BIN		=		test
CC		=		nasm
CFLAGS		=		-Wall -Wextra -Werror
SRC		=		ft_bzero.s\
				ft_isalpha.s\
				ft_isascii.s\
				ft_isalnum.s\
				ft_isdigit.s\
				ft_isprint.s\
				ft_toupper.s\
				ft_tolower.s\
				ft_puts.s\
				ft_strlen.s\
				ft_memcpy.s\
				ft_strcat.s\
				ft_memset.s\
				ft_strdup.s\
				ft_putstr.s\
				ft_cat.s

OBJ		=		$(SRC:.s=.o)

all: $(LIB)

$(LIB): $(OBJ)
		@ar rc $(LIB) $(OBJ)
		@ranlib $(LIB)

%.o: %.s
		@$(CC) -f macho64 $< -o $@ -I ./

.PHONY: clean fclean re test

test: $(LIB)
		@gcc $(CFLAGS) unit_test.c remain.c $(LIB) -I ./ -o $(BIN)

clean:
		@rm -f $(OBJ)

fclean: clean
		@rm -f $(LIB) $(BIN)

re: fclean all
