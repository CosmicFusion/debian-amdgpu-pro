#! /bin/bash

. ../version

###

echo "downloading packages"

mkdir -p ./debs

cd ./debs

wget http://repo.radeon.com/amdgpu/$amdpro/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libegl1-amdgpu-pro_"$major"-"$minor"~"$ubuntu"_i386.deb

wget http://repo.radeon.com/amdgpu/$amdpro/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libgl1-amdgpu-pro-dri_"$major"-"$minor"~"$ubuntu"_i386.deb

wget http://repo.radeon.com/amdgpu/$amdpro/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libgl1-amdgpu-pro-ext_"$major"-"$minor"~"$ubuntu"_i386.deb

wget http://repo.radeon.com/amdgpu/$amdpro/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libglapi1-amdgpu-pro_"$major"-"$minor"~"$ubuntu"_i386.deb

wget http://repo.radeon.com/amdgpu/$amdpro/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libgles2-amdgpu-pro_"$major"-"$minor"~"$ubuntu"_i386.deb

###

echo "extracting packages"

mkdir -p ../DEBIAN

cd ../DEBIAN

####

ar -x ../debs/libegl1-amdgpu-pro_"$major"-"$minor"~"$ubuntu"_i386.deb

tar -xf data.tar.xz

rm -r *.tar*

rm debian-binary

####

ar -x ../debs/libgl1-amdgpu-pro-dri_"$major"-"$minor"~"$ubuntu"_i386.deb

tar -xf data.tar.xz

rm -r *.tar*

rm debian-binary

####

ar -x ../debs/libgl1-amdgpu-pro-ext_"$major"-"$minor"~"$ubuntu"_i386.deb

tar -xf data.tar.xz

rm -r *.tar*

rm debian-binary

####

ar -x ../debs/libglapi1-amdgpu-pro_"$major"-"$minor"~"$ubuntu"_i386.deb

tar -xf data.tar.xz

rm -r *.tar*

rm debian-binary

####

ar -x ../debs/libgles2-amdgpu-pro_"$major"-"$minor"~"$ubuntu"_i386.deb

tar -xf data.tar.xz

rm -r *.tar*

rm debian-binary

###

#

echo "adapting to a mesa friendly environment"

rm -r ./opt/amdgpu


#

echo "restructuring package directories  "

mkdir -p ./opt/amdgpu-pro/opengl

mv ./opt/amdgpu-pro/lib ./opt/amdgpu-pro/opengl/

mv ./opt/amdgpu-pro/opengl/lib/xorg ./opt/amdgpu-pro/opengl/lib/i386-linux-gnu/

mv ./usr/lib/i386-linux-gnu/* ./opt/amdgpu-pro/opengl/lib/i386-linux-gnu/

rm -r ./usr/lib

# 

echo "adding *Disabled* library path"

mkdir -p ./etc

mkdir -p ./etc/ld.so.conf.d

touch ./etc/ld.so.conf.d/amdgpu-pro-opengl-i386.conf

echo "# /opt/amdgpu-pro/opengl/lib/i386-linux-gnu" > ./etc/ld.so.conf.d/amdgpu-pro-opengl-i386.conf

###

#

echo "making debian package"

mkdir -p ./DEBIAN

touch ./DEBIAN/control

printf "Package: opengl-amdgpu-pro\nVersion: $major-$minor~$ubuntu\nArchitecture: i386\nMaintainer: $LOGNAME\nDepends: libc6 (>= 2.34), libgcc-s1 (>= 3.3.1), libstdc++6 (>= 11), libwayland-amdgpu-client0, amdgpu-pro-core\nProvides: libegl1-amdgpu-pro, libgl1-amdgpu-pro-dri, libgl1-amdgpu-pro-ext, libglapi1-amdgpu-pro, libgles2-amdgpu-pro\nSection: libs\nPriority: optional\nMulti-Arch: same\nDescription: AMDGPU Pro OpenGL driver\n " >> ./DEBIAN/control

#

cd ../

#

dpkg-deb --build ./DEBIAN

echo "cleaning"

rm -r ./debs

rm -r ./DEBIAN

