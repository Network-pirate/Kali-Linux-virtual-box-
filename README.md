# 🐉 Kali Linux Setup in VirtualBox

A complete guide and resource to install **Kali Linux** in **Oracle VirtualBox** — built for beginners and cybersecurity learners.

> 🔧 Perfect for ethical hackers, CTF players, and those who want a portable Kali setup.

---

## 📦 What’s Included

- ✅ Kali Linux VirtualBox ISO (latest official)
- ✅ Recommended VM configuration
- ✅ Step-by-step install guide (PDF/screenshots/video support coming)
- ✅ Optional guest additions tips
- ✅ Networking setup (NAT, Bridge, and Host-only options)

---

## 🚀 Installation Steps

> 📌 You must have **VirtualBox** installed on your PC  
> Get it from: [https://www.virtualbox.org/](https://www.virtualbox.org/)

---

### 1. 📥 Download Kali ISO

Get the latest version of Kali from:
```
https://www.kali.org/get-kali/
```

Choose:  
- 🔘 Installer (for full disk install)  
- Or: Live version (for testing without install)

---

### 2. 💻 Create a New Virtual Machine

Open VirtualBox and:

- Name: `Kali Linux`
- Type: `Linux`
- Version: `Debian (64-bit)`
- RAM: At least `2048 MB` (recommend 4096 MB)
- Disk: `Virtual Disk Image (VDI)` > Dynamically allocated > At least `20 GB`

---

### 3. 🔗 Attach the Kali ISO

- Go to Settings > Storage
- Click the empty disk > Choose the downloaded `.iso`
- Boot the VM

---

### 4. 🧙 Follow Kali Installer Steps

- Select language & region
- Set up username & password
- Partition disk > Guided - use entire disk
- Wait for installation to complete

---

### 5. ✨ Optional (Guest Additions)

To enable full-screen, clipboard sharing, and better performance:

Inside Kali terminal:

```bash
sudo apt update
sudo apt install -y virtualbox-guest-x11
reboot
```

---

## 🧠 Tips

- Use NAT networking for internet access
- Use Bridge networking for full LAN access
- Snapshots are helpful before risky experiments
- Update tools after install:  
```bash
sudo apt update && sudo apt upgrade
```

---

## 📸 Screenshots (Coming Soon)

I'll be adding screenshots for every step, or even a video guide in the future.

---

## 🛡️ Disclaimer

This guide is for **educational and ethical use only**.  
You are responsible for how you use your Kali Linux VM.

---

## 👤 Author

- GitHub: [Network-pirate](https://github.com/Network-pirate)
- Developer: **Tawhed**
- Other Projects: [Codex IP Changer](https://github.com/Network-pirate/codex-ip-changer), [CC-KILLER](https://github.com/Network-pirate/CC-KILLER)

---

## ❤️ Made for learning and cybersecurity research
