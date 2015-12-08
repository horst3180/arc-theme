#!/bin/sh

# Script to upgrade/install the arc-theme

# Theme name
theme_name=Arc-theme

# Github account
gh_account=horst3180

#Branch to install from
branch=install_script

# URL
download_url=https://github.com/$gh_account/$theme_name/archive/$branch.tar.gz

# Update Script
updater=/usr/bin/arc-theme-upgrade

# Tempdir
tempdir=/tmp/$theme_name

# Directories
lightdir=/usr/share/themes/Arc
darkerdir=/usr/share/themes/Arc-Darker
darkdir=/usr/share/themes/Arc-Dark

#Functions
show_error() {
  printf "\033[1;31m$@\033[0m\n"
}

show_warning() {
  printf "\033[1;33m$@\033[0m\n"
}

check_root() {
  if [ "$(id -u)" -ne 0 ]; then
    show_warning "This script has to be run as root"
    echo
    # Try to find sudo to aquire root previleges, exit otherwise
    command -v sudo >/dev/null 2>&1 || { show_error >&2 "Could not find sudo. Run this script as root or configure sudo for the current user."; exit 1; }
    # Re-execute as root, but kill the sudo time stamp, so people know what's going on
    exec sudo -k sh "$0" "$@"
  fi
}

check_command() {
  fail=false

  for i in "$@"
  do
    command -v $i >/dev/null 2>&1 || { show_error >&2 "This script requires "$i" but it's not installed."; fail=true; }
  done

  if [ "$fail" = true ]; then
    echo
    echo "Aborting."
    echo
    exit 1;
  fi
}

check_directories() {
  dirfound=false

  echo "Checking if theme is installed..."
  echo

  for i in "$@"
  do
    if [ -d "$i" ]; then
      echo "Found $i"
      dirfound=true
    fi
  done

  if [ "$dirfound" = true ]; then
    echo
    echo "The above directories will be overwritten."
  fi

  if [ "$dirfound" = false ]; then
    echo "Theme is not installed."
  fi
}

create_updater() {
  # Creates a simple script to execute the latest version of arc-install.sh
  echo "#/bin/sh" > $updater
  echo "wget -Nq https://raw.githubusercontent.com/$gh_account/$theme_name/$branch/arc-install.sh -P /tmp && sh /tmp/arc-install.sh" >> $updater
  chmod +x $updater
}

install_theme() {
  # Clean tempdir
  rm -rf $tempdir && mkdir $tempdir && cd $tempdir

  # Get the sources && Remove current installation only if download and unpack are successful
  wget $download_url && tar xf $branch.tar.gz && rm -rf $lightdir $darkerdir $darkdir && cd $theme_name-$branch 

  # Build and install
  # Todo: pass build options to autogen.sh
  ./autogen.sh --prefix=/usr
  make install

  # Remove the sources
  rm -rf $tempdir

  echo
  echo "Installation complete."
}

install_updater() {
  if [ ! -f $updater ]; then
    echo
    read -r -p "Do you want to install a script for future updates? [y/N] " response
    case $response in
      [yY][eE][sS]|[yY])
        echo
        echo "Creating $updater"
        echo
        echo "You can update the theme in the future by executing $updater"
        echo
        create_updater
        ;;
      *)
        echo
        echo "Not installing updater."
        echo "Exiting."
        exit 0;
      ;;
    esac
  else
    echo
    echo "Found $updater"
    echo "Updating $updater"
    # Updating the update script if it's present
    create_updater
    echo "Exiting."
    exit 0;
  fi
}

# Main part
clear
echo
echo "Arc Theme Install Script"
echo "------------------------"
echo

#Check available commands
check_command automake wget pkg-config autoconf make tar

#Check if we are root
check_root

#Check if theme is installed
check_directories $lightdir $darkerdir $darkdir

echo
read -r -p "Do you want to continue installation? [y/N] " response
case $response in
  [yY][eE][sS]|[yY])
    install_theme
    install_updater
    ;;
  *)
    echo "Aborted by user."
    exit 0;
    ;;
esac
