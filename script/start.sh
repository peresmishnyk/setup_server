# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

cd $(dirname "$SCRIPTPATH")/.. && pwd && git pull && cd $(dirname "$SCRIPTPATH")

read -p "Install ZSH? [y,n]" -n 1 doit
case $doit in
  y|Y) ./install_zsh.sh ;;
  *) echo skip ;;
esac

echo Hello!!!
cd ~