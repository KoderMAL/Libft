# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alalaoui <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/04/20 20:13:40 by alalaoui          #+#    #+#              #
#    Updated: 2017/10/10 18:07:15 by alalaoui         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAG = -Wall -Wextra -Werror
HEADER = ./includes/
SRC = ft_atoi.c\
	  ft_atoll.c\
	  ft_bzero.c\
	  ft_intlen.c\
	  ft_hxlen.c\
	  ft_isalnum.c\
	  ft_isalpha.c\
	  ft_isascii.c\
	  ft_isdigit.c\
	  ft_line_isdigit.c\
	  ft_isprint.c\
	  ft_itoa.c\
	  ft_lstadd.c\
	  ft_lstdel.c\
	  ft_lstdelone.c\
	  ft_lstiter.c\
	  ft_lstmap.c\
	  ft_lstnew.c\
	  ft_memalloc.c\
	  ft_memccpy.c\
	  ft_memchr.c\
	  ft_memcmp.c\
	  ft_memcpy.c\
	  ft_memdel.c\
	  ft_memmove.c\
	  ft_memset.c\
	  ft_power.c\
	  ft_putchar.c\
	  ft_putchar_fd.c\
	  ft_putwchar.c\
	  ft_putendl.c\
	  ft_putendl_fd.c\
	  ft_putnbr.c\
	  ft_putnbr_fd.c\
	  ft_putnbr_base.c\
	  ft_put_longnbr.c\
	  ft_putstr.c\
	  ft_putwstr.c\
	  ft_putwnstr.c\
	  ft_putnstr.c\
	  ft_putstr_fd.c\
	  ft_strcat.c\
	  ft_strchr.c\
	  ft_strclr.c\
	  ft_strcmp.c\
	  ft_strcpy.c\
	  ft_strdel.c\
	  ft_strdup.c\
	  ft_strequ.c\
	  ft_striter.c\
	  ft_striteri.c\
	  ft_strjoin.c\
	  ft_strlcat.c\
	  ft_strlen.c\
	  ft_wclen.c\
	  ft_wslen.c\
	  ft_len_base.c\
	  ft_strmap.c\
	  ft_strmapi.c\
	  ft_strncat.c\
	  ft_strncmp.c\
	  ft_strncpy.c\
	  ft_strnequ.c\
	  ft_strnew.c\
	  ft_strnstr.c\
	  ft_strrchr.c\
	  ft_strsplit.c\
	  free_split.c\
	  ft_strstr.c\
	  ft_strsub.c\
	  ft_strtrim.c\
	  ft_tolower.c\
	  ft_toupper.c\
	  ft_strrev.c\
	  ft_sort_list.c\
	  ft_swap.c\
	  ft_isupper.c\
	  ft_sqrt.c\
	  get_next_line.c\

OBJ = $(SRC:.c=.o)

# COLORS
C_NO	=	"\033[00m"
C_OK	=	"\033[34m"
C_C		=	"\033[36m"
C_GOOD	=	"\033[32m"

# DBG MESSAGE
SUCCESS	=	$(C_GOOD)SUCCESS$(C_NO)
OK		=	$(C_OK)OK$(C_NO)


all : $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "  LIBRARY CREATION [->" $(C_OK) $(NAME) $(C_NO) "<-] ..." $(SUCCESS)

%.o:%.c
	@gcc $(FLAG) -o $@ -c $< -I $(HEADER)
	@echo "< Linking file -|" $(C_C) $< $(C_NO)"|- to library >" $(OK)

clean:
	@rm -f $(OBJ)
fclean: clean
	@rm -f $(NAME)
	@echo "  CLEANING [->" $(NAME) "<-] ..." $(SUCCESS)
re: fclean all

.PHONY: clean fclean all re
