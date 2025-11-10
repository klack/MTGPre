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
* Change directory to the MTGPre folder
* `mklink /D "%USERPROFILE%\Documents\My Games\Tabletop Simulator\Saves\MTGPre" ".\tables"`
* If you get a "File not found" error, you may have moved your My Documents folder or use OneDrive.  Update the above command with your new full path ending in `\My Games\Tabletop Simulator\Saves\MTGPre`


test

