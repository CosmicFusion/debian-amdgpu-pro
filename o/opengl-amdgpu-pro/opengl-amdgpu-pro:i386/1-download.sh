
#!/bin/bash



. ./versions    
    
mkdir ./archive
mkdir ./archive/i386
ARCHIVE=./archive/i386
cd ${ARCHIVE}    
    
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libegl1-amdgpu-pro_${major}-${minor}_i386.deb
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libgl1-amdgpu-pro-dri_${major}-${minor}_i386.deb
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libgl1-amdgpu-pro-ext_${major}-${minor}_i386.deb
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libgl1-amdgpu-pro-glx_${major}-${minor}_i386.deb
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libglapi1-amdgpu-pro_${major}-${minor}_i386.deb
wget http://repo.radeon.com/amdgpu/${major}/ubuntu/pool/proprietary/o/opengl-amdgpu-pro/libgles2-amdgpu-pro_${major}-${minor}_i386.deb
    
