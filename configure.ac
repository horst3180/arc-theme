AC_INIT(
    [arc-theme],
    [20150528],
    [https://github.com/horst3180/Arc-theme/issues],
    [arc-theme],
    [https://github.com/horst3180/Arc-theme],
    []
)

AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([foreign])
AC_PROG_MKDIR_P

ARC_ENABLE([GNOME_SHELL], [gnome-shell], [GNOME Shell],  [disable])
ARC_ENABLE([GTK2],        [gtk2],        [GTK2],         [disable])
ARC_ENABLE([GTK3],        [gtk3],        [GTK3],         [disable])
ARC_ENABLE([METACITY],    [metacity],    [Metacity],     [disable])
ARC_ENABLE([UNITY],       [unity],       [Unity],        [disable])
ARC_ENABLE([XFWM],        [xfwm],        [XFWM],         [disable])

ARC_GNOME

AC_CONFIG_FILES([
    common/Makefile
    extra/Makefile
    Makefile
])

AC_OUTPUT
