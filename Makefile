VERSION=0.1
MAJOR = 0

INSTALL = install

SERVICES = pwd-force-locker.service.in

.PHONY: all install clean

all: $(SERVICES:.service.in=.service)


%.service: %.service.in Makefile
#	sed -e 's^\@BINDIR\@^$(bindir)^g' < $< > $@

install: all
	$(INSTALL) -pD -m500 pwd.sh $(bindir)/pwd-force-locker
	$(INSTALL) -pD -m400 pwd-force-locker.service $(libdir)/systemd/system/pwd-force-locker.service

clean:
	$(RM) $(bindir)/pwd-force-locker
	$(RM) $(libdir)/systemd/system/pwd-force-locker.service
