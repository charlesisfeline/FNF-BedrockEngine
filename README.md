# AT THE CURRENT TIME IN DEVELOPMENT, THIS README FILE IS *VERY* OUTDATED, I WILL UPDATE IT AS SOON AS 0.3 IS READY TO RELEASE!

I'm currently working with https://github.com/Luisinhi010 to make this thing better

# Current Plans:

* Fix all current issues with Opponent Mode
* Noteskins on Options Menu
* Updating this entire file because it's outdated at the moment lol

# Future Plans:
* Softcoded Judgements (maybe??)
* Separated Noteskins for each Player
* Remove the Additional Hitsounds, making it a Toggle, and *(probably)* softcoding Hitsounds as a whole

# UPDATES:
* 01-13-22: did remove the additional hitsounds, now for the hard part I suppose!
* 01-15-22: imma just make hitsounds less louder for now, softcoded ones will be added eventually, not on 0.3

# Friday Night Funkin' - Bedrock Engine!
a fork of Psych Engine which adds a bunch of features from Pull Requests around the Main Branch, and even other forks!
Credits:
* CerBor - Difficulty Drop Down on Chart Menu - https://github.com/ShadowMario/FNF-PsychEngine/pull/2896
* HiroMizuki - Pixel Note Splashes - https://github.com/ShadowMario/FNF-PsychEngine/pull/1792
* lemz1 - Play as Opponent - https://github.com/ShadowMario/FNF-PsychEngine/pull/2770
* l1ttleO - Made ProjectFNF 2.X, Menu Animations, Original Hit Sound Code, Miss Sounds Toggle - https://github.com/l1ttleO/ProjectFNF
* Starmapo - Time Signatures - https://github.com/ShadowMario/FNF-PsychEngine/pull/3428
* Stilic - Freeplay Bump, Max Optimization - https://github.com/ShadowMario/FNF-PsychEngine/pull/1809
* tposejank - Sustains now wont do anything if the note that start it was missed - https://github.com/ShadowMario/FNF-PsychEngine/pull/2817
* Verwex - made Mic'd Up Engine, Winning Icons - https://github.com/Verwex/Funkin-Mic-d-Up-SC
* XtraXD1 - Show/Hide Weeks temporally + Getting/Setting on Source Code - https://github.com/ShadowMario/FNF-PsychEngine/pull/3192
* Yoshubs - made Forever Engine, Main Inspiration - https://github.com/Yoshubs/Forever-Engine-Legacy

# Compiling


> ### Dependencies

- Git
- Haxel (LATEST VERSION, STOP USING 4.1.5!!!!)
- VS Community (windows only!)

> ### OPTIONAL Dependencies 

- Visual Studio Code (for modifying the code itself)

> ### Recommended VS Code Extensions

- Lime
- Bracket Pair Colorizer 2
- HXCPP Debugger
- Tabline

# Downloads

### Git 
for Windows and Mac: https://git-scm.com/downloads
* **after installing, open a Command Prompt or Terminal, and type in:**
haxelib setup

Linux (Ubuntu and Debian based Distros): 

* sudo apt-get update
* sudo apt-get install git -y

Linux (Arch based Distros): 

* sudo pacman -Sy git --noconfirm

### Haxel

for Windows and Mac: https://haxe.org/download/

Linux (Ubuntu and Debian based Distros):

* sudo add-apt-repository ppa:haxe/releases -y
* sudo apt-get update
* sudo apt-get install haxe -y
* mkdir ~/haxelib && haxelib setup ~/haxelib

Linux (Arch based Distros)

* sudo pacman -Sy haxe --noconfirm

### VS Community
https://my.visualstudio.com/Downloads?q=visual%20studio%202017&wt.mc_id=o~msft~vscom~older-downloads

> ### VS Community Setup

once you download and install VS Community, on the "Workloads" tab, select "Desktop Development with C++"

near the "Install" button, there's a Drop-Down menu, click on it, Select "Download first, then Install"

now wait until it finishes, it is recommended to reboot your PC once it finishes, but it's not needed at all

# Terminal Setup & Compiling Game

on Windows, press "Windows+R" and type in "cmd", if you don't like cmd, or you just use something different, open that program instead
cmd is usually faster, that's why I'm recommending it!

on Linux, press "CTRL+ALT+T" and a Terminal window should open -- although, if you are on linux, you probably know that already

type in these commands

* haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
* haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit.git
* haxelib git hxvm-luajit https://github.com/nebulazorua/hxvm-luajit
* haxelib git faxe https://github.com/uhrobots/faxe
* haxelib git polymod https://github.com/MasterEric/polymod.git
* haxelib git extension-webm https://github.com/KadeDev/extension-webm
* haxelib install lime 7.9.0
* haxelib install openfl
* haxelib install flixel
* haxelib install flixel-tools
* haxelib install flixel-ui
* haxelib install hscript
* haxelib install flixel-addons
* haxelib install actuate
* haxelib run lime setup
* haxelib run lime setup flixel
* haxelib run flixel-tools setup 

***read carefully*** when it prompts for you to do anything (like: setup the lime command, setup flixel tools, etc)

once it's done, do this command to compile the game

### Windows

lime test windows

### Linux

lime test linux

### Mac
lime test mac

### for Debug Builds

add a "-debug" flag at the end of "lime test <platform>"

### VS Code Installation
Windows and Mac: https://code.visualstudio.com/Download

Linux (Ubuntu and Debian based Distros):
* sudo apt install software-properties-common apt-transport-https wget
* wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
* sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
* sudo apt install code

Linux (Arch based distros):
* sudo pacman -Sy code

In case you don't want your mod to be able to run .lua scripts, delete the "LUA_ALLOWED" line on Project.xml

# Current Features

## All Psych Engine Features!
Being a Psych Engine fork has it's Perks
* https://github.com/ShadowMario/FNF-PsychEngine

## Menu Animations and Freeplay Bump

https://user-images.githubusercontent.com/45212377/147199518-663ddd81-288a-4228-8d75-6fa6bccbc378.mp4

## Hit Sounds + Camera Follows the Arrow Direction

https://user-images.githubusercontent.com/45212377/147199769-1146c459-1448-4b33-b0c4-63319513c49e.mp4

## Max Optimiztion Mode
wanna play some FNF but your pc can't run it without crashing every 10 seconds? don't worry, we got the solution!

![image](https://user-images.githubusercontent.com/45212377/146985503-2e3f50ce-364f-4bbb-98e0-acd59db96600.png)

![image](https://user-images.githubusercontent.com/45212377/147282940-c81021ac-02ce-4ce7-a504-bdc3cbd51d38.png)

this should be enough for any pc to run!

* QUICK NOTE: This does not disable the HUD, or Note Splashes entirely, it's up to you to disable them in the game options!

## Letter Grading System!

![image](https://user-images.githubusercontent.com/45212377/147283059-d8555266-2e55-4e5d-9979-dd316c7004e7.png)

* S+ 	100% Accuracy.
* S 	Over 95% Accuracy.
* A 	Over 90% Accuracy.
* B 	Over 80% Accuracy.
* C 	Over 85% Accuracy.
* D  Over 79% Accuracy.
* E  Over 74% Accuracy.
* F  Anything Below 68% Accuracy.

## Opponent Mode

https://user-images.githubusercontent.com/45212377/147809658-3ef98953-4329-4c10-ac76-eec3d52ccbd7.mp4

can be enabled on the Gameplay Changers menu

## Pixel Note Splashes

https://user-images.githubusercontent.com/45212377/147283320-2cad2193-d1e9-42ee-b8d9-3ab4a267112b.mp4

## Judgement Skins
You can now Change your Judgements' Appearance with the new UI Skins

![image](https://user-images.githubusercontent.com/45212377/146613903-cc9dd497-d5cf-4e40-b435-210bc3d80f50.png)
![image](https://user-images.githubusercontent.com/45212377/147283279-7609e5fe-4b4f-449a-a8be-c052362c1831.png)

right now this feature is hardcoded, but I plan to make it softcoded soon

## Winning Icons

![image](https://user-images.githubusercontent.com/45212377/146986288-8d3a11d9-8aa7-4054-be57-7486cf244c54.png)

## and more!
I will keep updating this fork as much as possible for it to be in sync with the main repository, and adding more features to it in the future!
