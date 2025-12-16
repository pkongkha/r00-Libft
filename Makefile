SRCS := ft_strjoin.c ft_isascii.c ft_strdup.c ft_strtrim.c ft_strchr.c ft_isdigit.c ft_toupper.c ft_memchr.c ft_strrchr.c ft_lstlast.c ft_lstdelone.c ft_bzero.c ft_lstsize.c ft_striteri.c ft_lstclear.c ft_strlcat.c ft_putendl_fd.c ft_lstmap.c ft_memmove.c ft_atoi.c ft_lstiter.c ft_memset.c ft_lstnew.c ft_putnbr_fd.c ft_lstadd_front.c ft_isalnum.c ft_strlen.c ft_strncmp.c ft_isalpha.c ft_itoa.c ft_tolower.c ft_split.c ft_strnstr.c ft_putchar_fd.c ft_lstadd_back.c ft_substr.c ft_calloc.c ft_isprint.c ft_putstr_fd.c ft_memcmp.c ft_memcpy.c ft_strmapi.c ft_strlcpy.c
OBJS := $(SRCS:%.c=%.o)

CFLAGS += -Wall -Wextra -Werror -I.

CC ?= cc
AR ?= ar

NAME := libft.a

.PHONY: all clean fclean re
all: $(NAME)
clean:
	$(RM) $(OBJS)
fclean: clean
	$(RM) $(NAME)
re: fclean all

$(NAME): $(OBJS)
	$(AR) rcs $@ $^
%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<