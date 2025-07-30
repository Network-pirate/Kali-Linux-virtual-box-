# 🐉 Kali Linux VirtualBox Auto-Setup Tool

> ⚙️ A one-click script to instantly configure Kali Linux with all essential tools.  
> Designed for VirtualBox, fresh Kali installs, and ethical hacking learners.

---

## 🎯 Purpose

This tool automates the **first-time setup** of Kali Linux, saving hours of manual work.  
It installs a wide range of tools used in ethical hacking, CTFs, and cybersecurity research.

Ideal for:
- ✅ Beginners learning Kali
- ✅ Ethical hackers
- ✅ Students running Kali on VirtualBox or dual boot

---

## 🚀 Quick Start (Full Installation)

Use this to instantly install the script globally and make it executable:

```bash
# 📥 Download the setup script
wget https://raw.githubusercontent.com/Network-pirate/Kali-Linux-virtual-box-/main/Kali-Linux.sh -O kali-setup

# 🔐 Make it executable
chmod +x kali-setup

# 📁 Move to system path for global use
sudo mv kali-setup /usr/local/bin/kali-setup

# ▶️ Run the tool anytime
kali-setup
```

✅ *No need to clone the repo manually — everything runs with one command.*

---

## 🧰 What This Script Does

Your script:

- Installs all major hacking tools automatically
- Configures Kali Linux for practical use
- Sets up environment with no user interaction

---

## 🔧 Tools It Installs

| Category            | Tools                                                   |
|---------------------|----------------------------------------------------------|
| Network Scanners    | `nmap`, `net-tools`, `whois`, `traceroute`, `dnsutils`  |
| Exploitation        | `metasploit-framework`, `sqlmap`, `hydra`, `john`       |
| Wireless Hacking    | `aircrack-ng`, `reaver`                                  |
| Web Tools           | `nikto`, `curl`, `wget`                                  |
| System & Utility    | `neofetch`, `htop`, `figlet`, `lolcat`                   |

---

## 🔁 Inspired Process (From YouTube Scripts)

This script follows a professional Linux deployment process:

1. 📥 Downloads the main `.sh` file from GitHub  
2. 🔐 Grants execute permission using `chmod +x`  
3. 📦 Moves it to `/usr/local/bin` for system-wide usage  
4. 🧼 Cleans up temporary files (if added)

This allows the tool to be run by simply typing `kali-setup` — just like any official command.

---

## 🛡️ Disclaimer

> This tool is for **educational and ethical use only**.  
> The author is **not responsible** for misuse or illegal activity.

---

## 👨‍💻 Author

**Tawhed** – [@Network-pirate](https://github.com/Network-pirate)

🔗 Other Projects:
- [🛰️ Codex IP Changer (Linux + Termux)](https://github.com/Network-pirate/codex-ip-changer)
- [💳 CC-KILLER](https://github.com/Network-pirate/CC-KILLER)

---

## ❤️ Made with passion for hackers & students
