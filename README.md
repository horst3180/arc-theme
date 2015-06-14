# Arc Theme

Arc is a flat theme with transparent elements for GTK 3, GTK 2 and Gnome-Shell. It supports GTK 3 and GTK 2 based desktop environments like Gnome, Unity, Budgie, Pantheon, etc.

### Requirements

* Gnome/GTK 3.14 or 3.16
* The `gnome-themes-standard` package
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

**Packages**

Prebuilt packages for Ubuntu, Debian, Fedora and openSUSE are available at 

http://software.opensuse.org/download.html?project=home%3AHorst3180&package=arc-theme  
**Note:** elementary OS Freya users can install the package for Ubuntu 15.04

Arch Linux users can install the theme from the AUR

https://aur.archlinux.org/packages/gtk-theme-arc-git/

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
    --disable-xfce-notify      disable XFCE Notify support
    --disable-transparency     disable transparency in the GTK3 theme

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

The `extra` directory in the same directory as this README resides in contains a Chrome/Chromium and a Plank theme.

To install the Chrome/Chromium theme go to the `extra/Chrome` folder and drag and drop the arc-theme.crx into the Chrome/Chromium window. The source of the Chrome themes is located in the source "Chrome/arc-theme" folder.

To install the Plank theme, copy the `extra/Arc-Plank` folder to `~/.local/share/plank/themes` or to `/usr/share/plank/themes` for system-wide use.
Now open the Plank preferences window by executing `plank --preferences` from a terminal and select `Arc-Plank` as the theme.

### Troubleshooting

If you get artifacts like black or invisible backgrounds under Unity, disable overlay scrollbars with

    gsettings set com.canonical.desktop.interface scrollbar-mode normal


### Bug reporting
If you find a bug, please report it at https://github.com/horst3180/arc-theme/issues

### Preview
![alt tag](http://i.imgur.com/B1oroyH.jpg)
