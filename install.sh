#!/bin/bash

echo "Welcome to the Floflis People installer!"

echo "- Copying (probably) a lot of files. Don't worry if it takes several times..."
sudo mkdir /usr/lib/people
sudo cp -r -f --preserve=all . /usr/lib/people

echo "- Installing Floflis People in /usr/bin..."
sudo cat > /usr/bin/people << ENDOFFILE
#!/bin/bash

source /usr/lib/people/people
ENDOFFILE

echo "- Turning Floflis People into a executable..."
chmod 755 /usr/bin/people && sudo chmod +x /usr/bin/people

sudo rm /usr/lib/people/install.sh # no need anymore to use the installer again

echo "Done!"
