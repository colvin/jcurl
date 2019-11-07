PREFIX	?= /usr/local
DESTDIR	?= $(PREFIX)/bin

default: install


install:
	install -m 755 jcurl $(DESTDIR)/jcurl
