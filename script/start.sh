git pull
read -p "Install ZSH? [y,n]" -n 1 doit
case $doit in
  y|Y) ./install_zsh.sh ;;
  *) echo skip ;;
esac

echo Hello!!!
cd ~