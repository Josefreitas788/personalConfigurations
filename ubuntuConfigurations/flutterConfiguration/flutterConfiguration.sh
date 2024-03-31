move_android_studio_file(){
mv ~/Downloads/android-studio-20* ~/MobileDevelopment/ 
if [ $? -ne 0 ]; then
    mv ~/Transferencias/android-studio-20* ~/MobileDevelopment/

    if [ $? -ne 0 ]; then
        echo "Failed to move Android Studio to MobileDevelopment 
        Please, download Android Studio on https://developer.android.com/studio"
        exit 1

    fi
fi
}
sudo apt install -y qemu-kvm

if ! grep -q "kvm:x:[0-9]*:$USER" /etc/group; then
    sudo adduser $USER kvm    
fi

mkdir -p ~/MobileDevelopment

if test ~/MobileDevelopment/android-studio-20*; then
    echo "Android Studio already exists in ~/MobileDevelopment"
else
    move_android_studio_file
fi

sudo snap install -y flutter --classic