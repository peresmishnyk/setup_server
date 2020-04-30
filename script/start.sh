# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname $0)

cd $SCRIPTPATH/.. && pwd && git pull && cd $SCRIPTPATH

read -p "Do? [y,n]" -n 1 doit
case $doit in
  y|Y) echo do ;;
  *) echo skip ;;
esac

cd ~