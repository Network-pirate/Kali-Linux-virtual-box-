#!/bin/bash

# Ensure script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi

VM_NAME="Kali-Linux"  # Replace with your VM's name in VirtualBox

# Function to run a command and handle errors
run_command() {
    echo "Running: $1"
    eval $1
    if [ $? -ne 0 ]; then
        echo "Error: $2"
        exit 1
    fi
}

# 1. Install Guest Additions (requires CD ISO mounted)
install_guest_additions() {
    echo "Installing VirtualBox Guest Additions..."
    run_command "apt update && apt install -y build-essential dkms linux-headers-$(uname -r)" "Failed to install build dependencies"
    run_command "mkdir -p /media/cdrom" "Failed to create mount point for Guest Additions"
    run_command "mount /dev/cdrom /media/cdrom" "Failed to mount Guest Additions ISO"
    run_command "sh /media/cdrom/VBoxLinuxAdditions.run" "Failed to install Guest Additions"
    run_command "umount /media/cdrom" "Failed to unmount Guest Additions ISO"
}

# 2. Optimize VirtualBox VM settings
configure_virtualbox_settings() {
    echo "Configuring VirtualBox settings for ${VM_NAME}..."
    VBoxManage modifyvm "$VM_NAME" --vram 128
    VBoxManage modifyvm "$VM_NAME" --accelerate3d on
    VBoxManage modifyvm "$VM_NAME" --cpus 2
    VBoxManage modifyvm "$VM_NAME" --memory 4096
    VBoxManage modifyvm "$VM_NAME" --nested-hw-virt on
    VBoxManage modifyvm "$VM_NAME" --ioapic on
    VBoxManage modifyvm "$VM_NAME" --hpet on
    echo "VirtualBox settings configured."
}

# 3. Configure networking to Bridged Mode
configure_networking() {
    echo "Setting network mode to Bridged for ${VM_NAME}..."
    VBoxManage modifyvm "$VM_NAME" --nic1 bridged
}

# 4. Set up USB passthrough for a wireless adapter
configure_usb_passthrough() {
    echo "Configuring USB passthrough for wireless adapter..."
    VBoxManage usbfilter add 0 --target "$VM_NAME" --name "USB Wireless" --action hold
}

# 5. Optimize system performance inside Kali
optimize_kali_linux() {
    echo "Optimizing system performance inside Kali..."
    # Enable virtual memory optimizations
    sysctl -w vm.swappiness=10
    echo "vm.swappiness=10" >> /etc/sysctl.conf
    
    # Run a Python script to apply advanced settings
    python3 - <<EOF
import os
import subprocess

# Disable unnecessary services
def disable_services():
    services = ["bluetooth", "cups"]
    for service in services:
        subprocess.run(["sudo", "systemctl", "disable", service])

# Configure TCP optimizations
def configure_tcp():
    tcp_configs = {
        "net.ipv4.tcp_syncookies": 1,
        "net.ipv4.tcp_window_scaling": 1,
        "net.ipv4.tcp_moderate_rcvbuf": 1
    }
    with open("/etc/sysctl.conf", "a") as file:
        for key, value in tcp_configs.items():
            file.write(f"{key}={value}\n")
    subprocess.run(["sudo", "sysctl", "-p"])

disable_services()
configure_tcp()
EOF
}

# 6. Update Kernel and Install Common Tools
update_kernel_and_install_tools() {
    echo "Updating kernel and installing additional tools..."
    run_command "apt update && apt upgrade -y" "Failed to update packages"
    run_command "apt install -y nmap aircrack-ng net-tools" "Failed to install tools"
}

# Run all functions
echo "Starting Kali Linux optimization script for VirtualBox..."
install_guest_additions
configure_virtualbox_settings
configure_networking
configure_usb_passthrough
optimize_kali_linux
update_kernel_and_install_tools

echo "Optimization complete! Please reboot the Kali VM to apply changes."
