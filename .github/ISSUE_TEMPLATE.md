# READ *CAREFULLY* BEFORE POSTING

**This list was created for avoiding duplicated issues, if your issue isn't listed, you should remove the list and continue.**

- The theme doesn't work in [distro] that have a GTK+ 3 version lower than 3.14 (i.e. Linux Mint 17.x).
  - Arc only supports versions *higher or equal than 3.14*.
- The theme is broken after a major GTK+ 3 update (i.e. 3.18 to 3.20).
  - Update the package or install from sources.
- The theme is broken after installing from sources.
  - Possibly a bug on GTK+ 3 version checking, use `--with-gnome=<version>` flag with `./autogen.sh`.
- Theme isn't transparent on GNOME applications without CSD (i.e. Ubuntu's patched GNOME applications).
  - Transparency on GTK+ 3 themes *isn't supported* for non-CSD applications.
- Theme doesn't build from AUR in Arch/Manjaro and others.
  - Ensure you have the `base-devel` group installed.

### Checks

*Put a "x" in the space between braces.*

- [ ] I ***really*** read the list above.
  - [ ] I checked if my issue isn't duplicated.
- [ ] I read the README.
  - [ ] There is nothing about my issue.
- [ ] I installed/built the package *specifically* for the GTK **AND** distribution version that I'm using.
- [ ] I re-login to my user session.

### Details

*Don't put "latest" in "version" items.*

- Distribution (with version):
  - Base distribution (with version)**\*1**:
- Desktop environment (with version):
- Arc version/commit:
- GTK+ 3 version:
  - Murrine engine version:
  - `gnome-themes-standard` version:
- Installation method:
  - [ ] Package.
  - [ ] Source.
  - Other:

**\*1**: If not, just put "independent".
