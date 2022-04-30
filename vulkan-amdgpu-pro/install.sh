
#!/bin/bash

# Builds the Deb Package

dpkg-deb --build --root-owner-group ./amdgpu-pro-vulkan-wrapper

# makes the proper links

sudo ln -s /opt/amdgpu-pro/etc/vulkan/icd.d/amd_icd64.json /usr/share/vulkan/icd.d/amd_pro_icd64.json

sudo ln -s /opt/amdgpu-pro/etc/vulkan/icd.d/amd_icd32.json /usr/share/vulkan/icd.d/amd_pro_icd32.json


# installs the deb files

sudo dpkg -i ./*.deb
