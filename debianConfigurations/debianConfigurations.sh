sudo apt install -y git curl dirmngr gpg curl gawk

# asdf configs
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
sed -i -e '$a\. "$HOME/.asdf/asdf.sh"' -e '$a\. "$HOME/.asdf/completions/asdf.bash"' ~/.bashrc
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

