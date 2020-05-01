# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(exec 2>/dev/null;cd -- $(dirname "$0"); unset PWD; /usr/bin/pwd || /bin/pwd || pwd)

cd $SCRIPTPATH &&  git pull

read -p "Do? [y,n]" -n 1 doit
case $doit in
  y|Y) echo do ;;
  *) echo skip ;;
esac

cd ~