
#!/bin/bash

. ./versions

pkgdir=./opengl-amdgpu-pro
output=./archive/i386/Output
#
#
#
cp -r ${output}/* ${pkgdir}
rm -r ${pkgdir}/opt/amdgpu-pro/lib/xorg
cp -r ${pkgdir}/usr/lib ${pkgdir}/opt/amdgpu-pro/
rm -r ${pkgdir}/usr/lib
#
#
#
rm -r ${pkgdir}/opt/amdgpu/share/drirc.d/*
#
#
#
mkdir ${pkgdir}/opt/amdgpu-pro/opengl/
cp -r ${pkgdir}/opt/amdgpu-pro/lib ${pkgdir}/opt/amdgpu-pro/opengl
rm -r ${pkgdir}/opt/amdgpu-pro/lib
#
#
#
rm -r ${pkgdir}/etc/ld.so.conf.d/10-amdgpu-pro-i386.conf
touch ${pkgdir}/etc/ld.so.conf.d/10-opengl-amdgpu-pro-i386.conf
echo  "# Un-comment the line under me to enable amdgpu-pro opengl in library path (may cause problems use "progl" instead)" > ${pkgdir}/etc/ld.so.conf.d/10-opengl-amdgpu-pro-i386.conf
echo  "# /opt/amdgpu-pro/opengl/lib/i386-linux-gnu" >> ${pkgdir}/etc/ld.so.conf.d/10-opengl-amdgpu-pro-i386.conf
