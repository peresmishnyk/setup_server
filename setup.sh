git config --global user.email "michkire@gmail.com"
if [ -d "~/.git" ]; then
  echo "Skip init repo"
else
  echo "Init repo"
  git clone --no-checkout git@github.com:peresmishnyk/setup_server.git ~/setup && mv ~/setup/.git ~/.git && rm -R ~/setup && git reset --hard
fi
