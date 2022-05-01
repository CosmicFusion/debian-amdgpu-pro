
#!/bin/bash

. ./versions

mkdir ./archive
mkdir ./archive/amd64
ARCHIVE=./archive/amd64
cd ${ARCHIVE}
mkdir ./Output
#
mkdir ./libegl1-amdgpu-pro_${major}-${minor}_amd64
cd ./libegl1-amdgpu-pro_${major}-${minor}_amd64
ar x ../libegl1-amdgpu-pro_${major}-${minor}_amd64.deb 
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
#
cd ../
#
mkdir ./libgl1-amdgpu-pro-appprofiles_${major}-${minor}_all
cd ./libgl1-amdgpu-pro-appprofiles_${major}-${minor}_all
ar x ../libgl1-amdgpu-pro-appprofiles_${major}-${minor}_all.deb 
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
#
cd ../
#
mkdir ./libgl1-amdgpu-pro-dri_${major}-${minor}_amd64
cd ./libgl1-amdgpu-pro-dri_${major}-${minor}_amd64
ar x ../libgl1-amdgpu-pro-dri_${major}-${minor}_amd64.deb
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
#
cd ../
#
mkdir ./libgl1-amdgpu-pro-ext_${major}-${minor}_amd64
cd ./libgl1-amdgpu-pro-ext_${major}-${minor}_amd64
ar x ../libgl1-amdgpu-pro-ext_${major}-${minor}_amd64.deb
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
#
cd ../
#
mkdir ./libgl1-amdgpu-pro-glx_${major}-${minor}_amd64
cd ./libgl1-amdgpu-pro-glx_${major}-${minor}_amd64
ar x ../libgl1-amdgpu-pro-glx_${major}-${minor}_amd64.deb
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
#
cd ../
#
mkdir ./libglapi1-amdgpu-pro_${major}-${minor}_amd64
cd ./libglapi1-amdgpu-pro_${major}-${minor}_amd64
ar x ../libglapi1-amdgpu-pro_${major}-${minor}_amd64.deb
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
#
cd ../
#
mkdir ./libgles2-amdgpu-pro_${major}-${minor}_amd64
cd ./libgles2-amdgpu-pro_${major}-${minor}_amd64
ar x ../libgles2-amdgpu-pro_${major}-${minor}_amd64.deb
tar -C ../Output -xf ./data.tar.xz
echo "Done!"
ar x ../libgles2-amdgpu-pro_${major}-${minor}_amd64.deb
tar -C ../Output -xf ./data.tar.xz
echo "Success!"
