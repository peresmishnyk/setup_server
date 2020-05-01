userdel -r developer
adduser developer --shell `which zsh` --system --ingroup www-data
usermod -aG sudo developer
echo "developer	ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer

PASSWD=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13`
PASSWD="linuxpassword"
echo -e "$PASSWD\n$PASSWD" | passwd developer

mkdir -p /home/developer/.ssh
cp ~/.ssh/* /home/developer/.ssh
chown -R developer:www-data /home/developer/.ssh
su - developer -c "cd ~ && git clone git@github.com:peresmishnyk/setup_server.git ~/setup && cd ~/setup/script && ./config_zsh.sh"
echo "developer password is: '$PASSWD'"
