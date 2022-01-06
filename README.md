# Friday Night Funkin' - Project Hypnosis!
a fork of Psych Engine which adds a bunch of features from Pull Requests around the Main Branch, and even other forks!
Credits:
* CerBor - Difficulty Drop Down on Chart Menu - https://github.com/ShadowMario/FNF-PsychEngine/pull/2896
* HiroMizuki - Pixel Note Splashes - https://github.com/ShadowMario/FNF-PsychEngine/pull/1792
* KadeDev - Constant Scroll Speeds - https://github.com/ShadowMario/FNF-PsychEngine/pull/2823
* lemz1 - Play as Opponent - https://github.com/ShadowMario/FNF-PsychEngine/pull/2770
* l1ttleO - Made ProjectFNF 2.X, Menu Animations, Hit Sounds, Miss Sounds Toggle, Camera Follows Note Direction - https://github.com/l1ttleO/ProjectFNF
* nintendofan44 - Lane Underlay - https://github.com/ShadowMario/FNF-PsychEngine/pull/1481
* Stilic - Freeplay Bump, Max Optimization - https://github.com/ShadowMario/FNF-PsychEngine/pull/1809
* tposejank - Controller Support, Sustains now wont do anything if the note that start it was missed - https://github.com/ShadowMario/FNF-PsychEngine/pull/2229, https://github.com/ShadowMario/FNF-PsychEngine/pull/2817
* Verwex - made Mic'd Up Engine, Winning Icons - https://github.com/Verwex/Funkin-Mic-d-Up-SC
* Yoshubs - made Forever Engine, Main Inspiration for Rank Names and Detailed Info Bar, Full Sick Combo assets - https://github.com/Yoshubs/Forever-Engine-Legacy

# Current Features

## Menu Animations and Freeplay Bump

https://user-images.githubusercontent.com/45212377/147199518-663ddd81-288a-4228-8d75-6fa6bccbc378.mp4

## Hit Sounds + Camera Follows the Arrow Direction

https://user-images.githubusercontent.com/45212377/147199769-1146c459-1448-4b33-b0c4-63319513c49e.mp4

## Lane Underlay

![image](https://user-images.githubusercontent.com/45212377/147282896-42119cc1-95d2-431a-ab8b-91760cd89fcf.png)

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

## Text Borders
pretty self explanatory, this applies to both the Info Bar Text and Botplay Text!
![image](https://user-images.githubusercontent.com/45212377/146986656-be657b6e-ab7a-463e-a561-20e7dc847865.png)

(No Borders Enabled)
![image](https://user-images.githubusercontent.com/45212377/147283197-656ea881-8650-4ecd-9be9-459001c8f7fa.png)

## UI Skins
You can now Change your Judgements' Appearance with the new UI Skins

![image](https://user-images.githubusercontent.com/45212377/146613903-cc9dd497-d5cf-4e40-b435-210bc3d80f50.png)
![image](https://user-images.githubusercontent.com/45212377/147283279-7609e5fe-4b4f-449a-a8be-c052362c1831.png)

right now this feature is hardcoded, but I plan to make it softcoded soon

## Winning Icons

![image](https://user-images.githubusercontent.com/45212377/146986288-8d3a11d9-8aa7-4054-be57-7486cf244c54.png)

## and more!
I will keep updating this fork as much as possible for it to be in sync with the main repository, and adding more features to it in the future!

# Friday Night Funkin' - Psych Engine
Engine originally used on [Mind Games Mod](https://gamebanana.com/mods/301107), intended to be a fix for the vanilla version's many issues while keeping the casual play aspect of it. Also aiming to be an easier alternative to newbie coders.

## Installation:
You must have [the most up-to-date version of Haxe](https://haxe.org/download/), seriously, stop using 4.1.5, it misses some stuff.

Follow a Friday Night Funkin' source code compilation tutorial, after this you will need to install LuaJIT.

To install LuaJIT do this: `haxelib install linc_luajit` on a Command prompt/PowerShell

...Or if you don't want your mod to be able to run .lua scripts, delete the "LUA_ALLOWED" line on Project.xml

## Credits:
* Shadow Mario - Coding
* RiverOaken - Arts and Animations
* bbpanzu - Assistant Coding

### Special Thanks
* shubs - New Input System
* SqirraRNG - Chart Editor's Sound Waveform base code
* iFlicky - Delay/Combo Menu Song Composer + Dialogue Sounds
* PolybiusProxy - .MP4 Loader Extension
* Keoiki - Note Splash Animations
* Smokey - Spritemap Texture Atlas support
_____________________________________

# Features

## Attractive animated dialogue boxes:

![](https://user-images.githubusercontent.com/44785097/127706669-71cd5cdb-5c2a-4ecc-871b-98a276ae8070.gif)


## Mod Support
* Probably one of the main points of this engine, you can code in .lua files outside of the source code, making your own weeks without even messing with the source!
* Comes with a Mod Organizing/Disabling Menu. 


## Atleast one change to every week:
### Week 1:
  * New Dad Left sing sprite 
  * Unused stage lights are now used
### Week 2:
  * Both BF and Skid & Pump does "Hey!" animations
  * Thunders does a quick light flash and zooms the camera in slightly
  * Added a quick transition/cutscene to Monster
### Week 3:
  * BF does "Hey!" during Philly Nice
  * Blammed has a cool new colors flash during that sick part of the song
### Week 4:
  * Better hair physics for Mom/Boyfriend (Maybe even slightly better than Week 7's :eyes:)
  * Henchmen die during all songs. Yeah :(
### Week 5:
  * Bottom Boppers and GF does "Hey!" animations during Cocoa and Eggnog
  * On Winter Horrorland, GF bops her head slower in some parts of the song.
### Week 6:
  * On Thorns, the HUD is hidden during the cutscene
  * Also there's the Background girls being spooky during the "Hey!" parts of the Instrumental

## Cool new Chart Editor changes and countless bug fixes
![](https://github.com/ShadowMario/FNF-PsychEngine/blob/main/docs/img/chart.png?raw=true)
* You can now chart "Event" notes, which are bookmarks that trigger specific actions that usually were hardcoded on the vanilla version of the game.
* Your song's BPM can now have decimal values
* You can manually adjust a Note's strum time if you're really going for milisecond precision
* You can change a note's type on the Editor, it comes with two example types:
  * Alt Animation: Forces an alt animation to play, useful for songs like Ugh/Stress
  * Hey: Forces a "Hey" animation instead of the base Sing animation, if Boyfriend hits this note, Girlfriend will do a "Hey!" too.

## Multiple editors to assist you in making your own Mod
![Screenshot_3](https://user-images.githubusercontent.com/44785097/144629914-1fe55999-2f18-4cc1-bc70-afe616d74ae5.png)
* Working both for Source code modding and Downloaded builds!

## Story mode menu rework:
![](https://i.imgur.com/UB2EKpV.png)
* Added a different BG to every song (less Tutorial)
* All menu characters are now in individual spritesheets, makes modding it easier.

## Credits menu
![Screenshot_1](https://user-images.githubusercontent.com/44785097/144632635-f263fb22-b879-4d6b-96d6-865e9562b907.png)
* You can add a head icon, name, description and a Redirect link for when the player presses Enter while the item is currently selected.

## Awards/Achievements
* The engine comes with 16 example achievements that you can mess with and learn how it works (Check Achievements.hx and search for "checkForAchievement" on PlayState.hx)

## Options menu:
* You can change Note colors, Delay and Combo Offset, Controls and Preferences there.
 * On Preferences you can toggle Downscroll, Middlescroll, Anti-Aliasing, Framerate, Low Quality, Note Splashes, Flashing Lights, etc.

## Other gameplay features:
* When the enemy hits a note, their strum note also glows.
* Lag doesn't impact the camera movement and player icon scaling anymore.
* Some stuff based on Week 7's changes has been put in (Background colors on Freeplay, Note splashes)
* You can reset your Score on Freeplay/Story Mode by pressing Reset button.
* You can listen to a song or adjust Scroll Speed/Damage taken/etc. on Freeplay by pressing Space.
