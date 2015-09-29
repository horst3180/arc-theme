#### Editing the theme

* The Colors and includes are defined in `gtkrc`, `gtkrc-dark` and `gtkrc-darker` for each theme variant.
* `main.rc` contains the major part of the theme
* `panel.rc` contains the panel styling for XFCE and Mate
* `apps.rc` contains some application specific rules

Because this theme is heavily based on the pixmap engine, a lot of the styling comes from the images in the `assets` and `assets-dark` folders. Don't edit these images directly. Instead do the following

* Open the `assets.svg` or `assets-dark.svg` file in inkscape. Each object in the .svg file corresponds to an image in the `assets` and `assets-dark` folder.

* Find the object you want to edit and make your changes. Important: Don't change the obejct id.

* Save `assets.svg` or `assets-dark.svg` and delete the images corresponding to the edited .svg objects from the `assets` or `assets-dark` folder (or just delete everything in the `assets` or `assets-dark` folder).

* Run `./render-assets.sh` or `./render-dark-assets.sh` from a terminal.
