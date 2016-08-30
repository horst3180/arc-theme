#! /bin/bash

INKSCAPE="/usr/bin/inkscape"
OPTIPNG="/usr/bin/optipng"

SRC_FILE="assets.svg"
ASSETS_DIR="assets"

DARK_SRC_FILE="assets-dark.svg"
DARK_ASSETS_DIR="assets-dark"

INDEX="assets.txt"

for i in `cat $INDEX`
do

if [ -f $ASSETS_DIR/$i.png ]; then
    echo $ASSETS_DIR/$i.png exists.
else
    echo
    echo Rendering $ASSETS_DIR/$i.png
    $INKSCAPE --export-id=$i \
              --export-id-only \
              --export-png=$ASSETS_DIR/$i.png $SRC_FILE >/dev/null \
    && $OPTIPNG -o7 --quiet $ASSETS_DIR/$i.png 
fi

if [ -f $DARK_ASSETS_DIR/$i.png ]; then
    echo $DARK_ASSETS_DIR/$i.png exists.
else
    echo
    echo Rendering $DARK_ASSETS_DIR/$i.png
    $INKSCAPE --export-id=$i \
              --export-id-only \
              --export-png=$DARK_ASSETS_DIR/$i.png $DARK_SRC_FILE >/dev/null \
    && $OPTIPNG -o7 --quiet $DARK_ASSETS_DIR/$i.png 
fi
done

cp $ASSETS_DIR/entry-toolbar.png menubar-toolbar/entry-toolbar.png
cp $ASSETS_DIR/entry-active-toolbar.png menubar-toolbar/entry-active-toolbar.png
cp $ASSETS_DIR/entry-disabled-toolbar.png menubar-toolbar/entry-disabled-toolbar.png

cp $ASSETS_DIR/menubar.png menubar-toolbar/menubar.png
cp $ASSETS_DIR/menubar_button.png menubar-toolbar/menubar_button.png


cp $DARK_ASSETS_DIR/button.png menubar-toolbar/button.png
cp $DARK_ASSETS_DIR/button-hover.png menubar-toolbar/button-hover.png
cp $DARK_ASSETS_DIR/button-active.png menubar-toolbar/button-active.png
cp $DARK_ASSETS_DIR/button-insensitive.png menubar-toolbar/button-insensitive.png

cp $DARK_ASSETS_DIR/entry-toolbar.png menubar-toolbar/entry-toolbar-dark.png
cp $DARK_ASSETS_DIR/entry-active-toolbar.png menubar-toolbar/entry-active-toolbar-dark.png
cp $DARK_ASSETS_DIR/entry-disabled-toolbar.png menubar-toolbar/entry-disabled-toolbar-dark.png

cp $DARK_ASSETS_DIR/menubar.png menubar-toolbar/menubar-dark.png
cp $DARK_ASSETS_DIR/menubar_button.png menubar-toolbar/menubar_button-dark.png

exit 0
