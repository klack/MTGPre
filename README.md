# Development Environment <!-- GitHub-optimized formatting -->

## 🚀 Clone Project

1. **Install Git** and **Git Bash**.
2. Open **Git Bash**.
3. Navigate to the directory where you want your project files.
4. Run the following commands:

   ```bash
   git clone https://github.com/klack/MTGPre.git
   cd MTGPre
   git submodule update --init --recursive
   ```

---

## 🔗 Create a Symlink to Tabletop Simulator Saves

1. Open **Windows Command Prompt (Admin Mode)**.
2. Update the paths below with your own.
3. Run:

   ```cmd
   mklink /D "C:\Users\USERNAME\Documents\My Games\Tabletop Simulator\Saves\MTGPre" "C:\projects\MTGPre\tables"
   ```

---

## 🧰 Code Editor Setup

### Install & Configure VSCode

1. Install **Visual Studio Code**.
2. Install the **Tabletop Simulator Lua** extension.
3. Apply this required manual fix:

   * Edit the extension folder:

     ```
     C:\Users\USERNAME\.vscode\extensions\rolandostar.tabletopsimulator-lua-1.1.3\dist
     ```
   * Go to **line 9406**.
   * Replace:

     ```
     node_modules.asar
     ```

     with:

     ```
     node_modules
     ```
4. Restart VSCode.
5. Press **Ctrl + Shift + P**.
6. Search for **"TTSLua: Install Console++"** and run it.

---

## 🎮 Plugin Usage

* **Ctrl + Alt + `** → Open TTS Console++
* **Ctrl + Alt + L** → Get Lua Scripts
* **Ctrl + Alt + S** → Save and Play

---

## 🧩 Console++ Integration (Per Save File)

Add the following to **Global.lua**:

```lua
require("vscode/console")

function onExternalCommand(input)
  print('VSCode: ' .. input)
end
```
