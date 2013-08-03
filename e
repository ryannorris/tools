#!/bin/sh

if [ $# == 1 ]; then
  NAME="main"
fi

case "$1" in
  [pP])
    ARTIFACT="partials"
    echo "$1 - $ARTIFACT"
    ;;
  [dD])
    ARTIFACT="scripts/directives"
    echo "$1 - $ARTIFACT"
    ;;
  [cC])
    ARTIFACT="scripts/controllers"
    echo "$1 - $ARTIFACT"
    ;;
  [sS])
    ARTIFACT="scripts/services"
    echo "$1 - $ARTIFACT"
    ;;
  *) echo "Invalid artifact. Use (p)artial, (d)irective, (c)ontroller, or (s)ervice."
esac

vi "app/$ARTIFACT/$NAME"
