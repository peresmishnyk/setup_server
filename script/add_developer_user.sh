userdel -r developer
adduser developer --shell `which zsh` --system --ingroup www-data
usermod -aG sudo developer

clear
export PASSWD="linuxpassword"
`echo -e "linuxpassword\nlinuxpassword" | passwd developer`

echo "developer	ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer

mkdir -p /home/developer/.ssh
cp ~/.ssh/* /home/developer/.ssh
chown -R developer:www-data /home/developer/.ssh
su - developer -c "cd ~ && git clone git@github.com:peresmishnyk/setup_server.git ~/setup && cd ~/setup/script && ./config_zsh.sh"
echo "developer password is: '$PASSWD'"
