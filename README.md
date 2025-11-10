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
* Update the paths below with your own and run
* `mklink /D "C:\Users\klack\Documents\My Games\Tabletop Simulator\Saves\MTGPre" "C:\projects\MTGPre\tables"`
