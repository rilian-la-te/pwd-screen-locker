bin_SCRIPTS = pwd-force-locker fsarchiver-backup

configdir = $(sysconfdir)/sbs-scripts
config_DATA = fsarchiver-backup.ini

if HAVE_SYSTEMD
systemdsystemunit_DATA = \
        pwd-force-locker.service \
        fsarchiver-backup.service \
        fsarchiver-backup.timer
endif

CLEANFILES = pwd-force-locker.service \
        fsarchiver-backup.service \
        fsarchiver-backup \
        fsarchiver-backup.ini
