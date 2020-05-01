userdel -r developer
adduser developer --shell `which zsh` --system --ingroup www-data
usermod -aG sudo developer
echo "developer	ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer

cp ~/.ssh/id_rsa /home/developer/.ssh/id_rsa
cp ~/.ssh/id_rsa.pub /home/developer/.ssh/id_rsa.pub
chown -R developer:www-data /home/developer/.ssh
su - developer -c "cd ~ && git clone git@github.com:peresmishnyk/setup_server.git ~/setup && cd ~/setup/script && ./config_zsh"
