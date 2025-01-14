NAME			= libft.a


SRC				= 	ft_isalpha.c \
						ft_isdigit.c \
						ft_isalnum.c \
						ft_isascii.c \
						ft_isprint.c \
						ft_strlen.c \
						ft_bzero.c \
						ft_memcpy.c \
						ft_memmove.c \
						ft_strlcpy.c \
						ft_strlcat.c \
						ft_strncmp.c \
						ft_toupper.c \
						ft_tolower.c \
						ft_strchr.c \
						ft_memset.c \
						ft_strrchr.c \
						ft_memchr.c \
						ft_memcmp.c \
						ft_strnstr.c \
						ft_atoi.c \
						ft_calloc.c \
						ft_strdup.c \
						ft_substr.c \
						ft_strjoin.c \
						ft_strtrim.c \
						ft_itoa.c \
						ft_strmapi.c \
						ft_striteri.c \
						ft_putchar_fd.c \
						ft_putstr_fd.c \
						ft_putendl_fd.c \
						ft_putnbr_fd.c \
						ft_split.c

BONUS_SCRS		= ft_lstnew_bonus.c \
						ft_lstadd_front_bonus.c \
						ft_lstadd_back_bonus.c \
						ft_lstlast_bonus.c \
						ft_lstsize_bonus.c \
						ft_lstclear_bonus.c \
						ft_lstiter_bonus.c \
						ft_lstmap_bonus.c \
						ft_lstdelone_bonus.c



OBJS			= $(SRC:%.c=%.o)

BONUS_OBJS  	= $(BONUS_SCRS:%.c=%.o)

CFLAGS			= -Wall -Wextra -Werror


$(NAME):	
			@gcc $(CFLAGS) -c $(SRC) -I ./
			@ar rcs $(NAME) $(OBJS)
			@echo "ejecutable creado"

all:		$(NAME)

bonus: 		$(NAME)
			@gcc $(FLAGS) -c $(BONUS_SCRS) -I ./
			ar rc $(NAME) $(BONUS_OBJS)

clean:
			rm -f $(OBJS) $(BONUS_OBJS)
			@echo "limpieza archivos .o"

fclean: 	clean
			rm -f $(NAME)
			@echo "limpieza de ejecutable"

re:		fclean all

.PHONY: all clean fclean re

