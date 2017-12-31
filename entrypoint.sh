#!/bin/sh

if [ ! -d "content/themes/promenade" ]; then
  cp -r content.orig/themes/promenade content/themes
fi

./journey
