# 🖱️ Windows 11 Context Menu Switcher

Easily toggle between the Windows 11 default right-click context menu and the classic Windows 10 style using a simple `.bat` script.

## 🔧 What It Does

This script provides a command-line menu that allows you to:

- ✅ **Enable** the classic Windows 10 context menu
- 🔄 **Revert** back to the default Windows 11 context menu

No admin rights required — just run it in a **regular Command Prompt**.

---

## ⚙️ How It Works

### ▶️ Restore Windows 10 Context Menu
Adds the following registry key:
```reg
HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32
