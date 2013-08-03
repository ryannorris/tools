#!/bin/sh

if [ $# == 1 ]; then
  NAME="main"
fi

EXT="js"

case "$1" in
  [pP])
    ARTIFACT="partials"
    EXT="html"
    ;;
  [dD])
    ARTIFACT="scripts/directives"
    ;;
  [cC])
    ARTIFACT="scripts/controllers"
    ;;
  [sS])
    ARTIFACT="scripts/services"
    ;;
  *) echo "Invalid artifact. Use (p)artial, (d)irective, (c)ontroller, or (s)ervice."
esac

vi "app/$ARTIFACT/$NAME.$EXT"
