# Arc Theme

Arc is a flat theme with transparent elements for GTK 3, GTK 2 and Gnome-Shell. It supports GTK 3 and GTK 2 based desktop environments like Gnome, Unity, Budgie, Pantheon, etc.

### Requirements

* Gnome/GTK 3.14 or 3.16
* The `gtk2-engines-pixbuf` package only for Debian/Ubuntu based distros.
* The murrine engine. This has different names depending on your distro.
  * `gtk-engine-murrine` (Arch Linux)
  * `gtk2-engines-murrine` (Debian, Ubuntu, elementary OS)
  * `gtk-murrine-engine` (Fedora)
  * `gtk2-engine-murrine` (openSUSE)
  * `gtk-engines-murrine` (Gentoo)

Main distributions that meet these requirements are

* Arch Linux and Arch Linux based distros
* Ubuntu 15.04
* elementary OS Freya
* Debian Jessie, Testing or Unstable
* Gentoo
* Fedora 21 and 22
* OpenSuse 13.2 and Tumbleweed

Derivatives of these distributions should work, aswell.

If your distribution is not listed, please check the requirements yourself.

### Installation

**Important:** Remove all older versions of the theme from your system before you proceed any further.

    sudo rm -rf /usr/share/themes/Arc
    rm -rf ~/.local/share/themes/Arc
    rm -rf ~/.themes/Arc

**Manual Installation**

To build the theme you need 
* `autoconf`
* `automake`
* `pkg-config` or `pkgconfig` if you use Fedora
* `libgtk-3-dev` for Debian based distros or `gtk3-devel` for RPM based distros
* `git` if you want to clone the source directory

If your distributions doesn't ship separate development packages you just need GTK 3 instead of the `-dev` packages.

Install the theme with the following commands

**1. Get the source**

If you want to install the latest version from git, clone the repository with

    git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme

If you want to install the latest stable release, run

    git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
    git fetch --tags
    git checkout $(git describe --tags `git rev-list --tags --max-count=1`)

or download it from https://github.com/horst3180/arc-theme/releases and cd into the extracted archive

**2. Build and install the theme**

    ./autogen.sh --prefix=/usr
    sudo make install

Other options to pass to autogen.sh are

    --disable-gnome-shell      disable GNOME Shell support
    --disable-gtk2             disable GTK2 support
    --disable-gtk3             disable GTK3 support
    --disable-metacity         disable Metacity support
    --disable-unity            disable Unity support
    --disable-xfwm             disable XFWM support

    --with-gnome=<version>     build the theme for a specific Gnome version (3.14, 3.16)
                               Note: Normally the correct version is detected automatically and this
                               option should not be needed.

After the installation is complete you can activate the theme with `gnome-tweak-tool` or a similar program by selecting `Arc`.

**Uninstall the theme**

Run

    sudo make uninstall

from the same directory as this README resides in, or

    sudo rm -rf /usr/share/themes/Arc

### Extras

The `extra` directory in the same directory as this README resides in contains a Chrome/Chromium  theme.

To install the Chrome/Chromium theme go to the `extra/Chrome` folder and drag and drop the arc-theme.crx into the Chrome/Chromium window. The source of the Chrome themes is located in the source "Chrome/arc-theme" folder.

### Troubleshooting

If you get artifacts like black or invisible backgrounds under Unity, disable overlay scrollbars with

    gsettings set com.canonical.desktop.interface scrollbar-mode normal


### Bug reporting
If you find a bug, please report it at https://github.com/horst3180/arc-theme/issues

### Preview
![alt tag](http://i.imgur.com/B1oroyH.jpg)
