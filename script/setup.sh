#echo "~/setup/script/start.sh" >> ~/.bashrc

export DEBIAN_FRONTEND=noninteractive

apt -y update
apt -y upgrade

# Absolute path this script is in, thus /home/user/bin
export SCRIPTPATH=$(exec 2>/dev/null;cd -- $(dirname "$0"); unset PWD; /usr/bin/pwd || /bin/pwd || pwd)

cd $SCRIPTPATH && git pull

./install_zsh.sh
./install_nginx.sh
./install_php.sh
./add_developer_user.sh
#echo "cd ~/setup && git pull && cp ./config/.zshrc ~/.zshrc && source ~/.zshrc" > ~/.ssh/rc

echo "TEST=\"my test value\"" >> /etc/environment