
#!/bin/bash

. ./versions

mkdir ./opengl-amdgpu-pro:i386
pkgdir=./opengl-amdgpu-pro:i386
output=./archive/i386/Output
cd ${pkgdir}


#

mkdir ./DEBIAN && touch ./DEBIAN/control

#
echo "" > ./DEBIAN/control
echo "Package: opengl-amdgpu-pro" >> ./DEBIAN/control
echo "Source: opengl-amdgpu-pro" >> ./DEBIAN/control
echo "Version: 22.10.1-1401700" >> ./DEBIAN/control
echo "Architecture: i386" >> ./DEBIAN/control
echo "Maintainer: CosmicFusion <hotrod.master@hotmail.com>" >> ./DEBIAN/control
echo "Depends: libc6 (>= 2.14), libgcc-s1 (>= 3.4), libstdc++6 (>= 4.8), amdgpu-pro-core" >> ./DEBIAN/control
echo "Section: libs" >> ./DEBIAN/control
echo "Priority: optional" >> ./DEBIAN/control
echo "Multi-Arch: same" >> ./DEBIAN/control
echo "Description: implementation of the OpenGL API. (32-bit)" >> ./DEBIAN/control
echo "Provides: libegl1-amdgpu-pro:i386, libgl1-amdgpu-pro-dri:i386, libgl1-amdgpu-pro-ext:i386, libgl1-amdgpu-pro-glx:i386, libglapi1-amdgpu-pro:i386, libgles2-amdgpu-pro:i386" >> ./DEBIAN/control

#
cd ../
#
cp -r ${output}/* ${pkgdir}
rm -r ${pkgdir}/opt/amdgpu-pro/lib/xorg
cp -r ${pkgdir}/usr/lib ${pkgdir}/opt/amdgpu-pro/
rm -r ${pkgdir}/usr/lib
rm -r ${pkgdir}/opt/amdgpu/share/drirc.d/*
mkdir ${pkgdir}/opt/amdgpu-pro/opengl/
cp -r ${pkgdir}/opt/amdgpu-pro/lib ${pkgdir}/opt/amdgpu-pro/opengl/lib
#

mkdir ${pkgdir}/usr/bin

cp ./progl32 ${pkgdir}/usr/bin

dpkg-deb --build --root-owner-group ./opengl-amdgpu-pro:i386
