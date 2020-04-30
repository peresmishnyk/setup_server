read -p "Install? [y,n]" -n 1 doit
case $doit in
  y|Y) echo yes ;;
  n|N) echo no ;;
  *) echo dont know ;;
esac
#./install.sh
cd ~