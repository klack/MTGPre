# Development Environment
### Clone project
* Install git and git bash
* Open git bash
* Navigate to the directory that will hold your project files
* `git clone https://github.com/klack/MTGPre.git`

### Create a symlink from the Tabletop save game folder to the project table folder
* Open Windows Command Prompt in Administrator Mode
* Change directory to the project folder
* `mklink /D "%USERPROFILE%\Documents\My Games\Tabletop Simulator\Saves\MTGPre" ".\tables"`
