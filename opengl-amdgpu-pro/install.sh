
#!/bin/bash

# Downloads .deb files from repo.radeon.com

./get-debs.sh

# Does the same but it's i386

./get-debs-32.sh

# Exctracts the .deb files

./extract.sh

# Does the same but it's i386

./extract-32.sh

# Builds the pacakge 

./makedeb.sh

# Does the same but it's i386

./makedeb-32.sh

# installs the deb files

sudo dpkg ./opengl-amdgpu-pro.deb
sudo dpkg ./opengl-amdgpu-pro:i386.deb
