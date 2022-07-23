.POSIX:

PREFIX = ~/.local

all: install

libby:

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp libby ${DESTDIR}${PREFIX}/bin/libby

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/libby

.PHONY: all install uninstall