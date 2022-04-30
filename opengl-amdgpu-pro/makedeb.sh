
#!/bin/bash

. ./versions

mkdir ./opengl-amdgpu-pro
pkgdir=./opengl-amdgpu-pro
output=./archive/amd64/Output
cd ${pkgdir}


#

mkdir ./DEBIAN && touch ./DEBIAN/control

#
echo "" > ./DEBIAN/control
echo "Package: opengl-amdgpu-pro" >> ./DEBIAN/control
echo "Source: opengl-amdgpu-pro" >> ./DEBIAN/control
echo "Version: 22.10.1-1401700" >> ./DEBIAN/control
echo "Architecture: amd64" >> ./DEBIAN/control
echo "Maintainer: CosmicFusion <hotrod.master@hotmail.com>" >> ./DEBIAN/control
echo "Depends: libc6 (>= 2.14), libgcc-s1 (>= 3.4), libstdc++6 (>= 4.8), amdgpu-pro-core", "libwayland-amdgpu-server0" >> ./DEBIAN/control
echo "Section: libs" >> ./DEBIAN/control
echo "Priority: optional" >> ./DEBIAN/control
echo "Multi-Arch: same" >> ./DEBIAN/control
echo "Description: implementation of the OpenGL API." >> ./DEBIAN/control
echo "Provides: libegl1-amdgpu-pro, libgl1-amdgpu-pro-appprofiles, libgl1-amdgpu-pro-dri, libgl1-amdgpu-pro-ext, libgl1-amdgpu-pro-glx, libglapi1-amdgpu-pro, libgles2-amdgpu-pro" >> ./DEBIAN/control

#
cd ../
#
cp -r ${output}/* ${pkgdir}
cp -r ${pkgdir}/usr/lib ${pkgdir}/opt/amdgpu-pro/
rm -r ${pkgdir}/usr/lib
rm -r ${pkgdir}/opt/amdgpu/share/drirc.d/*
mkdir ${pkgdir}/opt/amdgpu-pro/opengl/
cp -r ${pkgdir}/opt/amdgpu-pro/lib ${pkgdir}/opt/amdgpu-pro/opengl/lib
#
mkdir ${pkgdir}/usr/bin
cp ./progl ${pkgdir}/usr/bin

dpkg-deb --build --root-owner-group ./opengl-amdgpu-pro
