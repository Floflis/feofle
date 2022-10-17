#!/bin/bash

echo "Welcome to the Floflis' Feofle installer!"

echo "- Copying (probably) a lot of files. Don't worry if it takes several times..."
sudo mkdir /usr/lib/feofle
sudo cp -r -f --preserve=all . /usr/lib/feofle

echo "- Installing Floflis' Feofle in /usr/bin..."
sudo cat > /usr/bin/feofle << ENDOFFILE
#!/bin/bash

source /usr/lib/feofle/feofle
ENDOFFILE

echo "- Turning Floflis' Feofle into a executable..."
chmod 755 /usr/bin/feofle && sudo chmod +x /usr/bin/feofle

sudo rm /usr/lib/feofle/install.sh # no need anymore to use the installer again

echo "Done!"
