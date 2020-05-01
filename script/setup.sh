echo "~/setup/script/start.sh" >> ~/.bashrc

# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(cd -P -- "$(dirname -- "$0")" && printf '%s\n' "$(pwd -P)/$(basename -- "$0")")

cd $SCRIPTPATH/.. && git pull

cd $SCRIPTPATH && ./install_zsh.sh
cd $SCRIPTPATH && ./install_nginx.sh
cd $SCRIPTPATH && ./install_php.sh
cd $SCRIPTPATH && ./add_developer.sh
#echo "cd ~/setup && git pull && cp ./config/.zshrc ~/.zshrc && source ~/.zshrc" > ~/.ssh/rc