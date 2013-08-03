#!/bin/sh

PREFIX="app/scripts"

exp_target() {
  case "$1" in
    [pP])
      TARGET="partials"
      EXT="html"
      PREFIX="app"
      ;;
    [dD])
      TARGET="directives"
      ;;
    [cC])
      TARGET="controllers"
      ;;
    [sS])
      TARGET="services"
      ;;
  *) echo "Invalid artifact. Use (p)artial, (d)irective, (c)ontroller, or (s)ervice.  Prefix with 't' to open tests."
  esac
}

NAME="$2"

if [ $# == 1 ]; then
  NAME="main"
fi

EXT="js"
SHA="$1"

case "${SHA:0:1}" in
  [tT])
    PREFIX="test/spec"
    exp_target "${SHA:1:2}"
    ;;
  *)
    exp_target "$SHA"
    ;;
esac

if [ ! -d $PREFIX/$TARGET ]; then
  mkdir -p $PREFIX/$TARGET
fi

vi "$PREFIX/$TARGET/$NAME.$EXT"
