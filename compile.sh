#!/bin/sh

if [ ! -e ./node_modules/.bin/et ]; then
    echo "Plz run 'yarn install' first!"
else
    for theme in `ls ./src`
    do
        if [ "$theme" != "common" ]
        then
            ./node_modules/.bin/et -c src/$theme/index.scss -o dist/$theme/element
            cp ./src/common/* dist/$theme/
            cp ./src/$theme/*.css dist/$theme/
        fi
    done
fi
