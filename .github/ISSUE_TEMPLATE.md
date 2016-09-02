# READ CAREFULLY BEFORE POSTING

**This list was created for avoiding duplicated issues, if your issue isn't listed, you should remove the list and continue.**

- The theme doesn't work in a distribution that have a GTK+ 3 version lower than 3.14.
  - Arc only supports versions since 3.14, you should update to latest versions.
- The theme is broken after a major GTK+ 3 update (i.e. 3.18 to 3.20 or 3.20 to 3.22).
  - Update the package or install from sources.
- The theme is broken after installing from sources.
  - Possibly a bug on GTK+ 3 version checking, use `--with-gnome=<version>` flag with `./autogen.sh`.
- Theme isn't transparent on GNOME applications without CSD (i.e. Ubuntu's applications).
  - Transparency isn't supported for non-CSD applications.
- Theme doesn't build from AUR in Arch/Manjaro and others.
  - Ensure you have the `base-devel` group installed.

### Checks

*Ensure you...*

- **Really** read the list above and checked if your issue is or not duplicated.
- **Really** read the README and there is nothing about your issue.
- **Really** checked if the theme is installed or built specifically for the GTK+ 3/distribution version you're using.

### Details

- Distribution (with version):
  - Base distribution (if have, with version):
- Desktop environment (with version):
- Arc version/commit (don't put "latest"):
- GTK+ 3 version:
  - Murrine engine version:
  - `gnome-themes-standard` version:
- Installation method (package or source):
