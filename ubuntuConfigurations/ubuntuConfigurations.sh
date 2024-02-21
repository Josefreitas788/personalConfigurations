sudo apt install -y git curl dirmngr gpg curl gawk ca-certificates curl

# vsCode
	wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O vscode.deb
	sudo dpkg -i vscode.deb
	
# Hide Ubuntu docks(retirar luncher de apps do canto)
	gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
	gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false

# asdf configs
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
  sed -i -e '$a\. "$HOME/.asdf/asdf.sh"' -e '$a\. "$HOME/.asdf/completions/asdf.bash"' ~/.bashrc

# Docker Configurations
  sudo install -m 0755 -d /etc/apt/keyrings
  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
  sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
  echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get -y update

  sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
  sudo groupadd docker
  sudo usermod -aG docker $USER
  newgrp docker
 
# Add oh-my-bash
	bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
	sed -i '$ a\OSH_THEME="bakke"' file.txt
