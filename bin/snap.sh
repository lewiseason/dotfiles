#!/bin/sh
#
# Snap windows to screen edges

CUR=${2:-$(pfw)}
ROOT=$(lsw -r)
SW=$(wattr w $ROOT)
SH=$(wattr h $ROOT)

W=$((SW/2))
H=$SH

usage() {
  echo "Usage: $(basename $0) (left|right|top|bottom|max|ne|nw|se|sw)"
  exit 1
}

test -z "$1" && usage

case "$1" in
  left)  X=0  Y=0            W=$((SW/2)) H=$SH ;;
  right) X=$W Y=0            W=$((SW/2)) H=$SH;;
  top)   X=0  Y=0            W=$SW       H=$((SH/3)) ;;
  bottom)X=0  Y=$(($SH/3*2)) W=$SW H=$((SH/3)) ;;
  max)
    # If the window is the same width as the root window,
    # we are maximised?
    if [ "$(wattr w $CUR)" = "$SW" ]; then
      X=$(($SW/8))
      Y=$(($SH/8))
      W=$(($SW/8*6))
      H=$(($SH/8*6))
    else
      X=0 Y=0 W=$SW
    fi
    ;;
  [ns][ew])
    H=$(($SH/2))

    if [[ "$1" == "n"* ]]; then
      Y=0
    else
      Y=$((SH/2))
    fi

    if [[ "$1" = *"w" ]]; then
      X=0
    else
      X=$((SW/2))
    fi
    ;;
esac

wtp $X $Y $W $H $CUR
