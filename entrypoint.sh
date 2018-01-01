#!/bin/sh

cd /app

if [ ! -d "content/themes/promenade" ]; then
  cp -r content.orig/themes/promenade content/themes
fi

ls /app
/app/journey
