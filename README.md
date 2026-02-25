### Install docker
#### Debian based
sudo sh apt_install.sh

#### RHEL based
sudo sh dnf_install.sh

### Use docker without sudo
sudo usermod -aG docker $USER

newgrp docker
