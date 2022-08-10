#! /bin/bash

. ../version

echo "making debian package"

cd ./DEBIAN

mkdir -p ./DEBIAN

touch ./DEBIAN/control

printf "Package: amdgpu-opengl-switcher\nVersion: 1.3\nArchitecture: all\nMaintainer: $LOGNAME\nDepends: bash\nSection: libs\nPriority: optional\nMulti-Arch: foreign\nDescription: Select needed opengl implementation with gl_mesa, gl_zink or gl_pro prefix\n " >> ./DEBIAN/control

#

cd ../

#

dpkg-deb --build ./DEBIAN

