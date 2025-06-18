### **Linux file System**
The Linux file system is a hierarchical directory structure that organizes and stores all the data on a Linux system. Here's a comprehensive overview:

### Key Characteristics

1. **Hierarchical Structure**: Tree-like organization starting from root (`/`)
2. **Everything is a File**: Devices, directories, and regular files are all treated as files
3. **Case Sensitive**: Differentiates between uppercase and lowercase names
4. **File Permissions**: Uses read, write, execute permissions for owner/group/others

### Standard Directory Structure (Filesystem Hierarchy Standard - FHS)

The Linux file system follows a hierarchical directory structure, often visualized as an inverted tree. At the very top is the root directory, represented by a forward slash (/), and everything else — files, directories, devices — branches from it.



📁 / (Root Directory)  
The top-level directory. All files and directories stem from here. Only the root user has full control over it.

Common Subdirectories:

1. **/bin (Essential User Binaries)**
    
    - Contains fundamental user command binaries (like ls, cp, mv) needed during booting and single-user mode.
        
    - Example: /bin/ls, /bin/cp
        
2. **/boot (Boot Loader Files)**
    
    - Holds files required for system booting, including the Linux kernel and bootloader config files.
        
    - Example: /boot/vmlinuz, /boot/grub
        
3. **/dev (Device Files)**
    
    - Stores device nodes that represent hardware devices.
        
    - Example: /dev/sda (hard disk), /dev/tty (terminals)
        
4. **/etc (Configuration Files)**
    
    - Contains global config files for the system and applications.
        
    - Example: /etc/passwd, /etc/fstab
        
5. **/home (User Home Directories)**
    
    - Each user gets a directory here, e.g., /home/alex.
        
    - Stores personal files, documents, configs.
        
6. **/lib (Essential Shared Libraries)**
    
    - Shared library files needed to boot the system and run commands in /bin and /sbin.
        
    - Example: /lib/x86_64-linux-gnu/libc.so.6
        
7. **/media (Mount Points for Removable Media)**
    
    - Automatically mounted external drives (USBs, CDs).
        
    - Example: /media/usb
        
8. **/mnt (Mount Point for Temporarily Mounted Filesystems)**
    
    - Temporary mount location by sysadmins.
        
9. **/opt (Optional Software Packages)**
    
    - Third-party software gets installed here.
        
    - Example: /opt/google
        
10. **/proc (Process and Kernel Info Virtual Filesystem)**
    
    - A virtual directory containing runtime system information.
        
    - Example: /proc/cpuinfo, /proc/
        
11. **/root (Home Directory for root)**
    
    - Root user’s home directory, not to be confused with /.
        
12. **/run (Runtime Variable Data)**
    
    - Stores volatile runtime data, such as process IDs and system info since boot.
        
13. **/sbin (System Binaries)**
    
    - Contains essential binaries for system maintenance (usually used by root).
        
    - Example: /sbin/reboot, /sbin/ifconfig
        
14. **/srv (Service Data)**
    
    - Contains data for services provided by the system (like FTP, HTTP).
        
15. **/sys (System Info, Virtual Filesystem)**
    
    - Interface to the kernel used for device and system info.
        
    - Often used for debugging or device management.
        
16. **/tmp (Temporary Files)**
    
    - Holds temporary files used by processes.
        
    - Cleared on reboot.
        
17. **/usr (User System Resources)**
    
    - Contains user-installed software and libraries.
        
    - Subdirectories:
        
        - /usr/bin: user command binaries
            
        - /usr/sbin: system binaries
            
        - /usr/lib: libraries
            
        - /usr/local: software installed manually by admin
            
18. **/var (Variable Files)**
    
    - Stores files that change often: logs, mail, spool files.
        
    - Example: /var/log, /var/spool, /var/tmp
        
### Common Linux Filesystem Types

1. **ext4** (Fourth Extended Filesystem):
   - Default for most Linux distributions
   - Journaling filesystem
   - Supports large files (up to 16TB) and volumes (up to 1EB)

2. **XFS**:
   - High-performance journaling filesystem
   - Excellent for large files and parallel I/O

3. **Btrfs** (B-tree Filesystem):
   - Copy-on-write filesystem
   - Advanced features like snapshots, compression, and RAID

4. **ZFS** (on Linux via ZoL):
   - Combined filesystem and volume manager
   - Data integrity verification, snapshots, compression

5. **tmpfs**:
   - Temporary filesystem in RAM
   - Used for `/run` and `/dev/shm`

### Important Features

- **Journaling**: Prevents corruption after crashes (ext4, XFS, Btrfs)
- **Inodes**: Data structure storing file metadata (not the filename)
- **Hard Links & Soft Links**: Multiple references to the same file
- **Mount Points**: How additional filesystems are attached to the hierarchy
- **Permissions**: User/group/other read/write/execute controls

### Common Commands

```bash
# Navigation
pwd      # Print working directory
cd       # Change directory
ls       # List directory contents

# File operations
cp       # Copy files
mv       # Move/rename files
rm       # Remove files
mkdir    # Create directory
rmdir    # Remove empty directory

# Filesystem information
df -h    # Show disk space usage
du -sh   # Show directory size
mount    # Show mounted filesystems
lsblk    # List block devices

# Permissions
chmod    # Change file permissions
chown    # Change file owner/group
```

### **Summary**

| Directory  | Purpose |
|------------|---------|
| `/`        | Root directory - starting point of the file system |
| `/bin`     | Essential user command binaries (for all users) |
| `/boot`    | Boot loader files, kernel, initrd |
| `/dev`     | Device files (represent hardware components) |
| `/etc`     | System-wide configuration files |
| `/home`    | User home directories |
| `/lib`     | Essential shared libraries and kernel modules |
| `/media`   | Mount points for removable media |
| `/mnt`     | Temporarily mounted filesystems |
| `/opt`     | Optional application software packages |
| `/proc`    | Virtual filesystem providing process/kernel information |
| `/root`    | Home directory for the root user |
| `/run`     | Run-time variable data (created at boot) |
| `/sbin`    | System binaries (for system administration) |
| `/srv`     | Site-specific data served by the system |
| `/tmp`     | Temporary files (often cleared on reboot) |
| `/usr`     | Secondary hierarchy for read-only user data (most user programs) |
| `/var`     | Variable data files (logs, spools, caches) |
