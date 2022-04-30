
#!/bin/bash

. ./versions

mkdir ./archive
mkdir ./archive/amd64
ARCHIVE=./archive/amd64
cd ${ARCHIVE}



wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libegl1-amdgpu-pro_${major}-${minor}_amd64.deb
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/a/appprofiles-amdgpu-pro/libgl1-amdgpu-pro-appprofiles_${major}-${minor}_all.deb
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libgl1-amdgpu-pro-dri_${major}-${minor}_amd64.deb
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libgl1-amdgpu-pro-ext_${major}-${minor}_amd64.deb
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libgl1-amdgpu-pro-glx_${major}-${minor}_amd64.deb
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libglapi1-amdgpu-pro_${major}-${minor}_amd64.deb
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libgles2-amdgpu-pro_${major}-${minor}_amd64.deb

