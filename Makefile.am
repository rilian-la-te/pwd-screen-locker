bin_SCRIPTS = pwd-force-locker fsarchiver-backup cryptcheck

configdir = $(sysconfdir)/sbs-scripts
config_DATA = fsarchiver-backup.ini

udevrulesdir = /lib/udev/rules.d
udevrules_DATA = 27-udevcrypt.rules

if HAVE_SYSTEMD
systemdsystemunit_DATA = \
        pwd-force-locker.service \
        fsarchiver-backup.service \
        fsarchiver-backup.timer
endif

CLEANFILES = pwd-force-locker.service \
        fsarchiver-backup.service \
        fsarchiver-backup \
        27-udevcrypt.rules \
        fsarchiver-backup.ini
