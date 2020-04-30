# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname $0)
echo $SCRIPTPATH

cd $SCRIPTPATH/.. && pwd && git pull && cd $(dirname "$SCRIPTPATH")

read -p "Install ZSH? [y,n]" -n 1 doit
case $doit in
  y|Y) ./install_zsh.sh ;;
  *) echo skip ;;
esac

echo Hello!!!
cd ~