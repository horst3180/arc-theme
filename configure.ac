AC_INIT(
    [arc-theme],
    [20160605],
    [https://github.com/horst3180/Arc-theme/issues],
    [arc-theme],
    [https://github.com/horst3180/Arc-theme],
    []
)

AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([no-dist-gzip dist-xz foreign])
AC_PROG_MKDIR_P

ARC_ENABLE([LIGHT],         [light],         [Arc Light],     [disable])
ARC_ENABLE([DARKER],        [darker],        [Arc Darker],    [disable])
ARC_ENABLE([DARK],          [dark],          [Arc Dark],      [disable])
ARC_ENABLE([CINNAMON],      [cinnamon],      [Cinnamon],      [disable])
ARC_ENABLE([GNOME_SHELL],   [gnome-shell],   [GNOME Shell],   [disable])
ARC_ENABLE([GTK2],          [gtk2],          [GTK2],          [disable])
ARC_ENABLE([GTK3],          [gtk3],          [GTK3],          [disable])
ARC_ENABLE([METACITY],      [metacity],      [Metacity],      [disable])
ARC_ENABLE([UNITY],         [unity],         [Unity],         [disable])
ARC_ENABLE([XFWM],          [xfwm],          [XFWM],          [disable])
ARC_ENABLE([TRANSPARENCY],  [transparency],  [transparency],  [disable])

AS_IF([test "x$ENABLE_GNOME_SHELL$ENABLE_GTK3" != xnono], [ARC_GNOME])

AC_CONFIG_FILES([
    common/Makefile
    extra/Makefile
    Makefile
])

AC_OUTPUT
