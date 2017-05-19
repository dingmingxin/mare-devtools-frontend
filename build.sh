#!/bin/bash

rm -rf dist
rm -f mare-devtools-frontend.zip

# build modules
mkdir -p dist
./scripts/build/build_release_applications.py inspector \
    --input_path front_end/ \
    --output_path dist/front_end

# remove unnecessary modules
rm -rf \
    dist/front_end/accessibility \
    dist/front_end/animation \
    dist/front_end/audits \
    dist/front_end/audits2 \
    dist/front_end/devices \
    dist/front_end/elements \
    dist/front_end/emulated_devices \
    dist/front_end/emulation \
    dist/front_end/layers \
    dist/front_end/layer_viewer \
    dist/front_end/network \
    dist/front_end/profiler \
    dist/front_end/resources \
    dist/front_end/sass \
    dist/front_end/screencast \
    dist/front_end/security \
    dist/front_end/timeline \
    dist/front_end/timeline_model

# copy necessary images
mkdir -p dist/front_end/Images
cp front_end/Images/breakpointConditional.png dist/front_end/Images
cp front_end/Images/breakpoint.png dist/front_end/Images
cp front_end/Images/chromeSelect.png dist/front_end/Images
cp front_end/Images/deleteIcon.png dist/front_end/Images
cp front_end/Images/searchNext.png dist/front_end/Images
cp front_end/Images/searchPrev.png dist/front_end/Images
cp front_end/Images/smallIcons.png dist/front_end/Images
cp front_end/Images/toolbarButtonGlyphs.png dist/front_end/Images

# create package.json
sed 's/"name": "mare-devtools-frontend/\0-dist/' package.json > dist/package.json

# make archive
cd dist
zip -qr ../mare-devtools-frontend.zip ./*

echo 'Done.'

