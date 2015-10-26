# ARC_GNOME()
# ---------------
AC_DEFUN([ARC_GNOME], [
    GNOMEDIR="$srcdir/common/gtk-3.0"

    AC_ARG_WITH(
        [gnome],
        [AS_HELP_STRING(
            [--with-gnome],
            [GNOME minor version]
        )],
        [GNOME_VERSION="$withval"],
        [
         AC_CHECK_PROG(HAVE_PKG_CONFIG, pkg-config, yes)
         AS_IF(
             [test "x$HAVE_PKG_CONFIG" != "xyes"],
             [AC_MSG_ERROR([Could not find pkg-config.])]
         )
         PKG_CHECK_EXISTS(
            [gtk+-3.0],
            [GNOME_VERSION=`$PKG_CONFIG --modversion gtk+-3.0`],
            [AC_MSG_ERROR([Could not determine GNOME version. Please install GTK+3.0 and/or GTK+3.0 development files.])]
          )
        ]
    )

    # Trim version extras
    GNOME_VERSION=`echo $GNOME_VERSION | cut -d. -f-2`

    # Extra major and minor version components
    GNOME_VERSMJR=`echo $GNOME_VERSION | cut -d. -f1`
    GNOME_VERSMNR=`echo $GNOME_VERSION | cut -d. -f2`

    # Evenize the minor version for stable versions
    AS_IF(
        [test `expr $GNOME_VERSMNR % 2` != "0"],
        [GNOME_VERSION="$GNOME_VERSMJR.`expr $GNOME_VERSMNR + 1`"]
    )
    AS_IF(
        [! test -e "$GNOMEDIR/$GNOME_VERSION"],
        [AC_MSG_ERROR([Invalid GNOME version: $GNOME_VERSION])]
    )
    AC_SUBST([GNOME_VERSION])
    AC_MSG_RESULT([Building for GNOME $GNOME_VERSION])
])
