In Debian, Red Hat, and Arch Linux, the package managers and their common commands differ. Here's a comparison:

### **1. Debian (and Ubuntu-based Distros)**
- **Package Manager:** `APT` (Advanced Package Tool)  
- **Package Format:** `.deb`  
- **Command-line Tools:** `apt`, `apt-get`, `dpkg`  

#### **Common Commands:**
| Command | Description |
|---------|-------------|
| `sudo apt update` | Update package lists |
| `sudo apt upgrade` | Upgrade installed packages |
| `sudo apt install <package>` | Install a package |
| `sudo apt remove <package>` | Remove a package (keeps config files) |
| `sudo apt purge <package>` | Remove package + config files |
| `sudo apt autoremove` | Remove unused dependencies |
| `sudo apt search <keyword>` | Search for packages |
| `sudo apt show <package>` | Show package details |
| `dpkg -i <file.deb>` | Install a `.deb` file manually |
| `dpkg -l` | List installed packages |

---

### **2. Red Hat (Fedora, CentOS, RHEL)**
- **Package Manager:** `DNF` (modern) / `YUM` (older)  
- **Package Format:** `.rpm`  
- **Command-line Tools:** `dnf`, `yum`, `rpm`  

#### **Common Commands:**
| Command | Description |
|---------|-------------|
| `sudo dnf update` | Update all packages |
| `sudo dnf install <package>` | Install a package |
| `sudo dnf remove <package>` | Remove a package |
| `sudo dnf search <keyword>` | Search for packages |
| `sudo dnf info <package>` | Show package details |
| `sudo dnf autoremove` | Remove unused dependencies |
| `rpm -i <file.rpm>` | Install an `.rpm` file manually |
| `rpm -qa` | List installed packages |

---

### **3. Arch Linux (and Manjaro)**
- **Package Manager:** `Pacman`  
- **Package Format:** `.pkg.tar.zst`  
- **AUR Helper (Optional):** `yay`, `paru`  

#### **Common Commands:**
| Command | Description |
|---------|-------------|
| `sudo pacman -Syu` | Update system & packages |
| `sudo pacman -S <package>` | Install a package |
| `sudo pacman -R <package>` | Remove a package |
| `sudo pacman -Rs <package>` | Remove + unused deps |
| `sudo pacman -Ss <keyword>` | Search for packages |
| `sudo pacman -Qi <package>` | Show package info |
| `sudo pacman -Q` | List installed packages |
| `yay -S <package>` | Install from AUR (if using `yay`) |

---

### **Summary Table**
| Distro | Package Manager | Package Format | Install Command | Update Command |
|--------|----------------|----------------|-----------------|----------------|
| Debian | `apt` | `.deb` | `sudo apt install` | `sudo apt update && sudo apt upgrade` |
| Red Hat | `dnf` | `.rpm` | `sudo dnf install` | `sudo dnf update` |
| Arch | `pacman` | `.pkg.tar.zst` | `sudo pacman -S` | `sudo pacman -Syu` |

