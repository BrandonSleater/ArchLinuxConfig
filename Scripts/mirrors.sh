#!/bin/sh

reflector --verbose -l 100 -p http --sort rate --save /etc/pacman.d/mirrorlist

