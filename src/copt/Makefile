
INSTALL ?= install

INCLUDES += -I.

LOCAL_CFLAGS += -DLOCAL_REGEXP
OBJS = copt.o
REGEX_OBJS = regex/regcomp.o  regex/regerror.o regex/regexec.o  regex/regfree.o

OBJS += $(REGEX_OBJS)

all: copt$(EXESUFFIX)

copt$(EXESUFFIX):	$(OBJS)
	$(CC) -o copt$(EXESUFFIX) $(LDFLAGS) $(OBJS)

%.o: %.c
	$(CC) -c -o $@ $(CFLAGS) $(LOCAL_CFLAGS) $(INCLUDES) $^

install:
	$(INSTALL) copt$(EXESUFFIX) $(PREFIX)/bin/$(EXEC_PREFIX)copt$(EXESUFFIX)

clean:
	$(RM) copt$(EXESUFFIX) copt.o core$(EXESUFFIX) regex/*.o
	$(RM) -rf Debug Release


#Dependencies

copt.o: copt.c 
