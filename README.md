# 🔥 Maya Cleaner v1.0

A full-featured CMD script to **completely uninstall and remove all traces of Autodesk Maya** from your Windows system.  
This includes program files, user settings, cache, temp files, plugins, and even registry entries.

> ✅ Use this if you want a 100% clean Maya uninstall — no leftovers!

---

## 📁 Repository

**File:** [`Maya_clear.bat`](https://github.com/bantikumarsatlokashram/Maya_cleaner/blob/main/Maya_clear.bat)  
This is the main script that performs the deep cleaning of Autodesk Maya.

---

## ⚠️ Warning

This script will **permanently delete**:
- Maya installation folders
- All user preferences and shelf settings
- Arnold renderer and plugin cache
- Registry entries
- Autodesk licensing traces
- Environment variables related to Maya

> Please back up any important settings or files before using this tool.

---

## ✅ Features

- Uninstalls Maya silently using WMIC (if applicable)
- Removes all Maya-related folders from:
  - `Program Files`
  - `AppData\Roaming`
  - `AppData\Local`
  - `ProgramData`
  - `Documents`
- Deletes all Maya registry keys
- Clears environment variables set by Maya
- Removes FLEXnet licensing data
- Kills all Autodesk background processes before deletion

---

## 🖥️ Usage

### 1. Download the script

Click on `Maya_clear.bat` in this repo and press `Download`.

### 2. Run as Administrator

Right-click the `.bat` file and choose **Run as Administrator**  
This is required to remove system and registry files.

---

## 💡 Requirements

- Windows 10 or 11
- Admin privileges
- Maya version installed (any year, currently default is set to 2025)

---

## ✏️ Customization

If you're using a different version of Maya, edit this line inside the `.bat` script:

```cmd
SET MAYAVERSION=2025
