VERSION=0.1
MAJOR = 0

INSTALL = install

SERVICES = pwd-force-locker.service.in

.PHONY: all install clean

all: $(SERVICES:.service.in=.service)


%.service: %.service.in Makefile
	sed -e 's^\@BINDIR\@^$(bindir)^g' < $< > $@

install: 
	all
	$(INSTALL) -pD -m400 pwd.sh $(bindir)/pwd-force-locker
	$(INSTALL) -pD -m400 pwd-force-locker.service $(libdir)/systemd/system

clean:
	$(RM) $(bindir)/pwd-force-locker
	$(RM) $(libdir)/systemd/system/pwd-force-locker.service
