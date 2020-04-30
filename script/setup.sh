echo "~/setup/script/start.sh" >> ~/.bashrc

# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname $0)

cd $SCRIPTPATH/.. && pwd && git pull && cd $SCRIPTPATH

./install_zsh.sh