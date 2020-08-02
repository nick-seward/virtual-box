#!/bin/bash
VBoxManage setproperty vrdeextpack "Oracle VM VirtualBox Extension Pack"
VBoxManage createvm --name Windows10 --ostype Windows10_64 --register --basefolder /home/nick/vbox
VBoxManage modifyvm Windows10 --memory 8192 --vram 128 --boot1 dvd --vrde on --vrdeport 3389
VBoxManage modifyvm Windows10 --nic1 nat --audio none

VBoxManage createhd --filename /home/nick/vbox/Windows10.vdi --size 40960 --format VDI --variant Standard
VBoxManage storagectl Windows10 --name Windows_SATA --add sata
VBoxManage storageattach Windows10 --storagectl Windows_SATA --port 0 --type dvddrive --medium /home/nick/en_windows_10_business_editions_version_1903_updated_july_2019_x64_dvd_97049592.iso
VBoxManage storageattach Windows10 --storagectl Windows_SATA --port 1 --type hdd --medium /home/nick/vbox/Windows10.vdi
VBoxManage controlvm Windows10 clipboard bidirectional
