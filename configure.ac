#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

#AC_PREREQ(2.60)
AC_INIT(sbs-scripts, 0.1, ria.freelander@gmail.com)
AM_INIT_AUTOMAKE([-Wall foreign subdir-objects no-dist-gzip dist-xz])
# Checks for programs.
AC_PATH_PROG(PYTHON,python2)
AC_PROG_INSTALL
AC_PROG_MAKE_SET


# Checks for libraries.
PKG_PROG_PKG_CONFIG
AC_ARG_WITH([systemdsystemunitdir],
        AS_HELP_STRING([--with-systemdsystemunitdir=DIR], [Directory for systemd service files]),
        [], [with_systemdsystemunitdir=$($PKG_CONFIG --variable=systemdsystemunitdir systemd)])
AC_SUBST([systemdsystemunitdir], [$with_systemdsystemunitdir])
AM_CONDITIONAL(HAVE_SYSTEMD, [test -n "$with_systemdsystemunitdir"])
# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile
                 pwd-force-locker.service
                 fsarchiver-backup.service
                 fsarchiver-backup
                 fsarchiver-backup.ini])
AC_OUTPUT
