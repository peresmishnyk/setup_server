adduser developer --shell `which zsh` --system --ingroup www-data
usermod -aG sudo developer
echo "developer	ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer

su - developer "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
su - developer "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k"
#cp ../config/.p10k.zsh ~
#cp ../config/.zshrc ~

#cp config_zsh.sh /home/developer
#chown /home/developer/config_zsh
#sudo