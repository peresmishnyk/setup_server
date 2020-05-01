echo "~/setup/script/start.sh" >> ~/.bashrc

# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(exec 2>/dev/null;cd -- $(dirname "$0"); unset PWD; /usr/bin/pwd || /bin/pwd || pwd)

cd $SCRIPTPATH && git pull

cd $SCRIPTPATH && ./install_zsh.sh
cd $SCRIPTPATH && ./install_nginx.sh
cd $SCRIPTPATH && ./install_php.sh
cd $SCRIPTPATH && ./add_developer.sh
#echo "cd ~/setup && git pull && cp ./config/.zshrc ~/.zshrc && source ~/.zshrc" > ~/.ssh/rc