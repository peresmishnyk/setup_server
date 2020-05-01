userdel -r developer
adduser developer --shell `which zsh` --system --ingroup www-data
usermod -aG sudo developer
echo "developer	ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer

su - developer -c "cd ~ && git clone git@github.com:peresmishnyk/setup_server.git ~/setup && cd ~/setup/script && ./config_zsh"
