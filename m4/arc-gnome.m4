# ARC_GNOME()
# ---------------
AC_DEFUN([ARC_GNOME], [
    GNOMEDIR="$srcdir/common/gtk-3.0"

    PKG_CHECK_EXISTS(
        [gtk+-3.0],
        [GNOME_VERSION=`$PKG_CONFIG --modversion gtk+-3.0`],
        [GNOME_VERSION=`ls -1 "$GNOMEDIR" | tail -1`]
    )
    AC_ARG_WITH(
        [gnome],
        [AS_HELP_STRING(
            [--with-gnome],
            [GNOME minor version]
        )],
        [GNOME_VERSION="$withval"]
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
        [AC_MSG_ERROR([invalid GNOME version: $GNOME_VERSION])]
    )
    AC_SUBST([GNOME_VERSION])
])
