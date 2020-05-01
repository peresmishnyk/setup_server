SCRIPTPATH=$(cd -P -- "$(dirname -- "$0")" && printf '%s\n' "$(pwd -P)/$(basename -- "$0")")

echo $SCRIPTPATH
pwd