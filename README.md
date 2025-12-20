sudo sh install.sh

### Use docker without sudo
sudo usermod -aG docker $USER
newgrp docker
