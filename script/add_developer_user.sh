adduser developer
usermod -aG sudo developer
mkdir -p /home/developer
chown developer:developer /home/developer
echo "developer	ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer