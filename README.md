
# Development Environment
### Clone project
* Install git and git bash
* Open git bash
* Navigate to the directory that will hold your project files
* `git clone https://github.com/klack/MTGPre.git`
* `cd MTGPre`
* `git submodule update --init --recursive`

### Create a symlink from the Tabletop save game folder to the project table folder
* Open Windows Command Prompt in Administrator Mode
* Update the path below with your own and run
* `mklink /D "C:\Users\USERNAME\Documents\My Games\Tabletop Simulator\Saves\MTGPre" "C:\projects\MTGPre\tables"`

### Code Editor
* Install VSCode
* Install the Tabletop Simulator Lua plugin for VSCode
* It needs a manual fix applied to it
* Update the path below with your own
* Edit `C:\Users\USERNAME\.vscode\extensions\rolandostar.tabletopsimulator-lua-1.1.3\dist`
* On line 9406, `change node_modules.asar` to `node_modules`
* Restart VSCode
* Press Ctrl+Shift+P
* Search for "TTSLua: Install Console++" and click on it

### Plugin Usage
* Ctrl+Alt+` - Open TTS Console++
* Ctrl+Alt+L - Get Lua Scripts
* Ctrl+Alt+S - Save And Play
---
### Console++ integration (per save file)
* Add to Global.lua
```
require("vscode/console")

function onExternalCommand(input)
  print('VSCode: ' .. input)
end
```