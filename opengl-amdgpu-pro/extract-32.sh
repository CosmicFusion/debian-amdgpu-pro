
#!/bin/bash

. ./versions

mkdir ./archive
mkdir ./archive/i386
ARCHIVE=./archive/i386
cd ${ARCHIVE}
mkdir ./Output
#
mkdir libegl1-amdgpu-pro_${major}-${minor}_i386
cd ./libegl1-amdgpu-pro_${major}-${minor}_i386
ar x ../libegl1-amdgpu-pro_${major}-${minor}_i386.deb 
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
#
cd ../
#
mkdir ./libgl1-amdgpu-pro-dri_${major}-${minor}_i386
cd ./libgl1-amdgpu-pro-dri_${major}-${minor}_i386
ar x ../libgl1-amdgpu-pro-dri_${major}-${minor}_i386.deb 
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
#
cd ../
#
mkdir ./libgl1-amdgpu-pro-ext_${major}-${minor}_i386
cd ./libgl1-amdgpu-pro-ext_${major}-${minor}_i386
ar x ../libgl1-amdgpu-pro-ext_${major}-${minor}_i386.deb
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
#
cd ../
#
mkdir ./libgl1-amdgpu-pro-glx_${major}-${minor}_i386
cd ./libgl1-amdgpu-pro-glx_${major}-${minor}_i386
ar x ../libgl1-amdgpu-pro-glx_${major}-${minor}_i386.deb
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
#
cd ../
#
mkdir ./libglapi1-amdgpu-pro_${major}-${minor}_i386
cd ./libglapi1-amdgpu-pro_${major}-${minor}_i386
ar x ../libglapi1-amdgpu-pro_${major}-${minor}_i386.deb
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
#
cd ../
#
mkdir ./libgles2-amdgpu-pro_${major}-${minor}_i386
cd ./libgles2-amdgpu-pro_${major}-${minor}_i386
ar x ../libgles2-amdgpu-pro_${major}-${minor}_i386.deb
tar -C ../Output -xf ./data.tar.xz
echo "Success!"
