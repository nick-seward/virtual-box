# Virtual Box

**kubuntu.sh** - Installs Kubuntu 18.04.3 LTS desktop.

**windows10.sh** - Installs Windows 10 business edition. 

After installing the OS, don't forget to dettach the storage device for the installation iso.

## Installing Guest OS Addons
Download VBoxGuestAdditions.iso from this location - https://download.virtualbox.org/virtualbox/
Select the version that matches the version of VirtualBox running on the server.

For example,

```
wget https://download.virtualbox.org/virtualbox/5.2.34/VBoxGuestAdditions_5.2.34.iso
```

Now you attach this iso to the VM

```
VBoxManage storageattach Windows10 --storagectl Windows_SATA --port 0 --type dvddrive --medium /home/nick/VBoxGuestAdditions_5.2.34.iso
```

Start-up the VM and you will have this iso mounted as a DVD. Run the appropriate install program for the OS.

## Helpful Commands
### Starting a VM
VBoxManage startvm *vm_name* --type headless 

or

VBoxHeadless --startvm *vm_name*

### Stopping a VM
VBoxManage controlvm *vm_name* poweroff --type headless

### Deleting a VM
VBoxManage unregistervm --delete *vm_name*

### Dettach Storage
VBoxManage storageattach kubuntu --storagectl Kubuntu_SATA --port 0 --type dvddrive --medium none

The none for the *--medium* flag is what removes the storage.

### Shared Folder in Guest VM
VBoxManage sharedfolder add kubuntu --name pictures --hostpath /mnt/storage/Nick/Pictures/ -automount

VBoxManage sharedfolder add Windows10 --name YNAB --hostpath /home/nick/YNAB/ -automount

In Linux the shared folder us under the /media/sf_sharename.
For Windows run the following command, `net use x: \\vboxsvr\sharename`
