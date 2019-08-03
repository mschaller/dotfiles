#!/bin/bash

WORKDIR=$HOME/freecad


if [ ! -d $WORKDIR ]; then
    mkdir $WORKDIR
fi

podman run -ti --rm --name FreeCAD --net=host -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix -v $HOME/.Xauthority:/root/.Xauthority -v $WORKDIR:/root izone/freecad:stable freecad
