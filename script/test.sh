SCRIPTPATH=$(exec 2>/dev/null;cd -- $(dirname "$0"); unset PWD; /usr/bin/pwd || /bin/pwd || pwd)

echo $SCRIPTPATH
pwd