# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fsnow-be <fsnow-be@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/31 11:28:46 by sjuery            #+#    #+#              #
#    Updated: 2019/02/18 22:15:44 by fsnow-be         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= 	libftprintf.a

LIBFT		=		srcs/libft/ft_bzero \
				srcs/libft/ft_atoi \
				srcs/libft/ft_isalnum \
				srcs/libft/ft_isalpha \
				srcs/libft/ft_isascii \
				srcs/libft/ft_isdigit \
				srcs/libft/ft_isprint \
				srcs/libft/ft_itoa \
				srcs/libft/ft_lstadd \
				srcs/libft/ft_lstdel \
				srcs/libft/ft_lstdelone \
				srcs/libft/ft_lstiter \
				srcs/libft/ft_lstmap \
				srcs/libft/ft_lstnew \
				srcs/libft/ft_lstsize \
				srcs/libft/ft_list_pback \
				srcs/libft/ft_list_pfront \
				srcs/libft/ft_memalloc \
				srcs/libft/ft_memccpy \
				srcs/libft/ft_memchr \
				srcs/libft/ft_memcmp \
				srcs/libft/ft_memcpy \
				srcs/libft/ft_memdel \
				srcs/libft/ft_memmove \
				srcs/libft/ft_memset \
				srcs/libft/ft_putchar_fd \
				srcs/libft/ft_putchar \
				srcs/libft/ft_putendl_fd \
				srcs/libft/ft_putendl \
				srcs/libft/ft_putnbr_fd \
				srcs/libft/ft_putnbr \
				srcs/libft/ft_putstr_fd \
				srcs/libft/ft_putstr \
				srcs/libft/ft_strcat \
				srcs/libft/ft_strchr \
				srcs/libft/ft_strclr \
				srcs/libft/ft_strcmp \
				srcs/libft/ft_strcpy \
				srcs/libft/ft_strdel \
				srcs/libft/ft_strdup \
				srcs/libft/ft_strequ \
				srcs/libft/ft_striter \
				srcs/libft/ft_striteri \
				srcs/libft/ft_strjoin \
				srcs/libft/ft_strlcat \
				srcs/libft/ft_strlen \
				srcs/libft/ft_strmap \
				srcs/libft/ft_strmapi \
				srcs/libft/ft_strncat \
				srcs/libft/ft_strncmp \
				srcs/libft/ft_strncpy \
				srcs/libft/ft_strnequ \
				srcs/libft/ft_strnew \
				srcs/libft/ft_strnstr \
				srcs/libft/ft_strrchr \
				srcs/libft/ft_strsplit \
				srcs/libft/ft_strstr \
				srcs/libft/ft_strsub \
				srcs/libft/ft_strtrim \
				srcs/libft/ft_tolower \
				srcs/libft/ft_toupper \
				srcs/libft/ft_whitespaces \
				srcs/libft/ft_count \
				srcs/libft/ft_power \
				srcs/libft/ft_wordcount \
				srcs/libft/ft_wordsize \
				srcs/libft/ft_supertrim \
				srcs/libft/ft_print_bits \
				srcs/libft/ft_print_membit \
				srcs/libft/ft_print_memory \
				srcs/libft/ft_onespace \
				srcs/libft/ft_strrev \



PRINTF		=	srcs/printf/ft_printf \
				srcs/printf/check \
				srcs/printf/free_p \
				srcs/printf/string \
				srcs/printf/xprint \
				srcs/printf/notation \
				srcs/printf/integers \
				srcs/printf/oprint \
				srcs/printf/uprint \
				srcs/printf/cprint \
				srcs/printf/ccprint \
				srcs/printf/pprint \
				srcs/printf/write \
				srcs/printf/int_plus1 \
				srcs/printf/int_plus2 \
				srcs/printf/fprint \
				srcs/printf/piskaprint \
				srcs/printf/color \
				srcs/printf/double/ft_bigpart \
				srcs/printf/double/ft_littlesmall \
				srcs/printf/double/ft_mult \
				srcs/printf/double/ft_putdbl \
				srcs/printf/double/ft_putldbl \
				srcs/printf/double/ft_strike \
				srcs/printf/double/ft_sumstr \


SRCS		=	$(addsuffix .c, $(LIBFT)) $(addsuffix .c, $(PRINTF))
OBJS		=	$(addsuffix .o, $(LIBFT)) $(addsuffix .o, $(PRINTF))

all: $(NAME)

$(OBJS): $(SRCS)

$(NAME): $(OBJS)
	printf '\033[31m[...] %s\n\033[0m' "Compiling Libft Printf"
	@ar rcs $(NAME) $(OBJS)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Compiled Libft Printf"

clean:
	printf '\033[31m[...] %s\n\033[0m' "Cleaning Libft Printf"
	@rm -rf $(OBJS)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Cleaned Libft Printf"

fclean: clean
	@rm -rf $(NAME)

re: fclean all

.SILENT: $(OBJS) $(NAME) clean fclean re
