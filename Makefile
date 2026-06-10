.POSIX:

SRCS = \
ft_abs.c \
ft_atoi.c \
ft_bzero.c \
ft_calloc.c \
ft_isalnum.c \
ft_isalpha.c \
ft_isascii.c \
ft_isdigit.c \
ft_isgraph.c \
ft_isprint.c \
ft_isspace.c \
ft_isxdigit.c \
ft_itoa.c \
ft_lstadd_back.c \
ft_lstadd_front.c \
ft_lstclear.c \
ft_lstdelone.c \
ft_lstiter.c \
ft_lstlast.c \
ft_lstmap.c \
ft_lstnew.c \
ft_lstsize.c \
ft_max.c \
ft_memchr.c \
ft_memcmp.c \
ft_memcpy.c \
ft_memmove.c \
ft_memset.c \
ft_min.c \
ft_putchar_fd.c \
ft_putendl_fd.c \
ft_putnbr_fd.c \
ft_putstr_fd.c \
ft_split.c \
ft_split_destroy.c \
ft_strchr.c \
ft_strdup.c \
ft_striteri.c \
ft_strjoin.c \
ft_strlcat.c \
ft_strlcpy.c \
ft_strlen.c \
ft_strmapi.c \
ft_strncmp.c \
ft_strnstr.c \
ft_strrchr.c \
ft_strtrim.c \
ft_substr.c \
ft_tolower.c \
ft_toupper.c \
ft_printf/ft_printf.c \
ft_printf/ft_printf_buffer_flush.c \
ft_printf/ft_printf_buffer_init.c \
ft_printf/ft_printf_buffer_pad.c \
ft_printf/ft_printf_buffer_putc.c \
ft_printf/ft_printf_buffer_puts.c \
ft_printf/ft_printf_buffer_write.c \
ft_printf/ft_printf_conv.c \
ft_printf/ft_printf_conv_char.c \
ft_printf/ft_printf_conv_deci.c \
ft_printf/ft_printf_conv_hex.c \
ft_printf/ft_printf_conv_nbrbase.c \
ft_printf/ft_printf_conv_ptr.c \
ft_printf/ft_printf_conv_str.c \
ft_printf/ft_printf_conv_udeci.c \
ft_printf/ft_printf_conv_unbrbase.c \
ft_printf/ft_printf_try_consume_flag.c \
ft_printf/ft_printf_try_consume_precision.c \
ft_printf/ft_printf_try_consume_width.c \
ft_printf/ft_vfprintf.c \
get_next_line/get_next_line.c \
get_next_line/get_next_line_utils.c

OBJS = $(SRCS:.c=.o)
DEPS = $(OBJS:.o=.d)

CFLAGS += -Wall -Wextra -Werror -pedantic
CFLAGS += -MMD -MP
CFLAGS += -O2 -ftree-vectorize -march=native
CFLAGS += -I.

CC ?= cc
AR ?= ar
RM ?= rm -f

NAME = libft.a

.PHONY: all clean fclean re
all: $(NAME)
clean:
	$(RM) $(OBJS) $(DEPS)
fclean: clean
	$(RM) $(NAME)
re: fclean .WAIT all

$(NAME): $(OBJS)
	$(AR) rcs $@ $^

.SUFFIXES: .o .c
.c.o:
	$(CC) -c $(CFLAGS) -o $@ $<

-include $(DEPS)
