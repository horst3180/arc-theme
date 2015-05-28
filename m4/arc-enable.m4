# ARC_ENABLE(VARIABLE, FEATURE, HELP-NAME, DISABLE/ENABLE)
# -----------------------------------------------------------
AC_DEFUN([ARC_ENABLE], [
    AC_ARG_ENABLE(
        [$2],
        [AS_HELP_STRING(
            [--$4-$2],
            [$4 $3 support]
        )],
        [ENABLE_$1="$enableval"],
        [AS_IF(
            [test "x$4" == "xdisable"],
            [ENABLE_$1="yes"],
            [ENABLE_$1="no"]
        )]
    )
    AM_CONDITIONAL([ENABLE_$1], [test "x$ENABLE_$1" == "xyes"])
    AC_SUBST([ENABLE_$1])
])
