adduser developer --shell `which zsh` --no-create-home --system --ingroup www-data
usermod -aG sudo developer
echo "developer	ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer