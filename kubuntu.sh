#!/bin/bash
VBoxManage setproperty vrdeextpack "Oracle VM VirtualBox Extension Pack"
VBoxManage createvm --name kubuntu --ostype Ubuntu_64 --register --basefolder /home/nick/vbox
VBoxManage modifyvm kubuntu --memory 8192 --vram 128 --boot1 dvd --vrde on --vrdeport 3389
VBoxManage modifyvm kubuntu --nic1 nat --audio none

VBoxManage createhd --filename /home/nick/vbox/kubuntu.vdi --size 20480 --format VDI --variant Standard
VBoxManage storagectl kubuntu --name Kubuntu_SATA --add sata
VBoxManage storageattach kubuntu --storagectl Kubuntu_SATA --port 0 --type dvddrive --medium /home/nick/kubuntu-18.04.3-desktop-amd64.iso
VBoxManage storageattach kubuntu --storagectl Kubuntu_SATA --port 1 --type hdd --medium /home/nick/vbox/kubuntu.vdi
VBoxManage controlvm kubuntu clipboard bidirectional
