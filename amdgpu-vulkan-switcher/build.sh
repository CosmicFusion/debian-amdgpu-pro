#! /bin/bash

. ../version

echo "making debian package"

cd ./DEBIAN

mkdir -p ./DEBIAN

touch ./DEBIAN/control

printf "Package: amdgpu-vulkan-switcher\nVersion: 1.3\nArchitecture: all\nMaintainer: $LOGNAME\nDepends: bash\nSection: libs\nPriority: optional\nMulti-Arch: foreign\nDescription: Select needed vulkan implementation with vk_radv, vk_amdvlk or vk_pro prefix\n " >> ./DEBIAN/control

#

cd ../

#

dpkg-deb --build ./DEBIAN

