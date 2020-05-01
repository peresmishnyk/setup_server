userdel -r developer
adduser developer --shell `which zsh` --system --ingroup www-data
usermod -aG sudo developer
echo "developer	ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer

mkdir -p /home/developer/.ssh
cp ~/.ssh/* /home/developer/.ssh
chown -R developer:www-data /home/developer/.ssh
su - developer -c "cd ~ && git clone git@github.com:peresmishnyk/setup_server.git ~/setup && ~/setup/script/config_zsh.sh"
