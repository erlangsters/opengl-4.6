ERTS_INCLUDE_DIR ?= $(ERLANG_ERTS_DIR)/include
ERL_INTERFACE_INCLUDE_DIR ?= $(ERL_INTERFACE_DIR)/include
ERL_INTERFACE_LIB_DIR ?= $(ERL_INTERFACE_DIR)/lib

UNAME_SYS := $(shell uname -s)
ifeq ($(UNAME_SYS), Darwin)
	CC ?= cc
	CFLAGS ?= -O3 -std=c17 -Wall -Wextra -Werror=implicit-function-declaration -Wmaybe-uninitialized -Wno-incompatible-pointer-types
	LDFLAGS ?= -flat_namespace -undefined suppress
else ifeq ($(UNAME_SYS), Linux)
	CC ?= gcc
	CFLAGS ?= -O3 -std=c17 -Wall -Wextra -Werror=implicit-function-declaration -Wmaybe-uninitialized -Wno-incompatible-pointer-types
endif

CFLAGS += -fPIC -I $(ERTS_INCLUDE_DIR) -I $(ERL_INTERFACE_INCLUDE_DIR) -Iinclude
LDLIBS += -L $(ERL_INTERFACE_LIB_DIR) -lei -lGL
LDFLAGS += -shared

SOURCES = gl.c glad.c
OBJECTS = $(SOURCES:.c=.o)
TARGET = ../priv/beam-gl.so

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJECTS)
	@mkdir -p ../priv
	$(CC) $(LDFLAGS) -o $@ $(OBJECTS) $(LDLIBS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)
