package;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.util.FlxSave;
import flixel.effects.FlxFlicker;
import flixel.util.FlxTimer;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import lime.app.Application;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Achievements;
import editors.MasterEditorMenu;
import Controls;

using StringTools;

class SimpleMenuState extends MusicBeatState
{
	var options:Array<String> = ['Story Mode', 
	'Freeplay', 
	#if MODS_ALLOWED 'Mods', #end
	#if ACHIEVEMENTS_ALLOWED 'Awards', #end
	'Credits',
	#if !switch 'Donate', #end
	'Options'];

	#if web
	public static var bedrockWebVersion:String = '0.3 (Non Release Build)';
	public static var psychWebVersion:String = '0.5.1 (Non Release Build)';
	#end
	#if debug
	public static var bedrockDebugVersion:String = '0.3 (Debug Build)';
	public static var psychDebugVersion:String = '0.5.1 (Debug Build)';
	#end
	public static var bedrockEngineVersion:String = '0.3'; //This is also used for Discord RPC
	public static var psychEngineVersion:String = '0.5.1'; //this one too

	private var grpOptions:FlxTypedGroup<Alphabet>;

	private static var curSelected:Int = 0;
	private var camAchievement:FlxCamera;
	public static var menuBG:FlxSprite;

	var debugKeys:Array<FlxKey>;

	function openSelectedSubstate(label:String)
	{
		switch (label)
		{
			case 'Story Mode':
				MusicBeatState.switchState(new StoryMenuState());
			case 'Freeplay':
				MusicBeatState.switchState(new FreeplayState());
			case 'Mods':
				MusicBeatState.switchState(new ModsMenuState());
			case 'Awards':
				MusicBeatState.switchState(new AchievementsMenuState());
			case 'Credits':
				MusicBeatState.switchState(new CreditsState());
			case 'Donate':
				CoolUtil.browserLoad('https://ninja-muffin24.itch.io/funkin');
			case 'Options':
				MusicBeatState.switchState(new options.OptionsState());
		}
	}

	override function create()
	{
		#if desktop
		DiscordClient.changePresence("In the Main Menu", null);
		#end

		debugKeys = ClientPrefs.copyKey(ClientPrefs.keyBinds.get('debug_1'));

		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuBG'));
		bg.setGraphicSize(Std.int(bg.width * 1.1 * scaleRatio));
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = ClientPrefs.globalAntialiasing;
		add(bg);

		grpOptions = new FlxTypedGroup<Alphabet>();
		add(grpOptions);

		//Version Text
		var versionShit:FlxText = new FlxText(12, ClientPrefs.getResolution()[1] - 64, 0, "Bedrock Engine v" + bedrockEngineVersion, 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);
		var versionShit:FlxText = new FlxText(12, ClientPrefs.getResolution()[1] - 44, 0, "Psych Engine v" + psychEngineVersion, 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);
		//Web Version Text
		#if web
		var versionShit:FlxText = new FlxText(12, ClientPrefs.getResolution()[1] - 64, 0, "Bedrock Engine v" + bedrockWebVersion, 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);
		var versionShit:FlxText = new FlxText(12, ClientPrefs.getResolution()[1] - 44, 0, "Psych Engine v" + psychWebVersion, 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);
		#end
		//Debug Build Version Text
		#if debug
		var versionShit:FlxText = new FlxText(12, ClientPrefs.getResolution()[1] - 64, 0, "Bedrock Engine v" + bedrockDebugVersion, 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);
		var versionShit:FlxText = new FlxText(12, ClientPrefs.getResolution()[1] - 44, 0, "Psych Engine v" + psychDebugVersion, 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);
		#end
		//FNF Version Text (Global)
		var versionShit:FlxText = new FlxText(12, ClientPrefs.getResolution()[1] - 24, 0, "Friday Night Funkin' v" + Application.current.meta.get('version'), 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);

		for (i in 0...options.length)
		{
			var optionText:Alphabet = new Alphabet(0, 0, options[i], true, false);
			optionText.screenCenter();
			optionText.y += (100 * (i - (options.length / 2))) + 50;
			grpOptions.add(optionText);
		}

		changeSelection();

		super.create();
	}

	override function closeSubState()
	{
		super.closeSubState();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (controls.UI_UP_P)
		{
			changeSelection(-1);
		}
		if (controls.UI_DOWN_P)
		{
			changeSelection(1);
		}

		if (controls.BACK)
		{
			FlxG.sound.play(Paths.sound('cancelMenu'));
			MusicBeatState.switchState(new TitleState());
		}

		if (controls.ACCEPT && ClientPrefs.flashing) {
			FlxG.sound.play(Paths.sound('confirmMenu'));
			grpOptions.forEach(function(grpOptions:Alphabet) {
				FlxFlicker.flicker(grpOptions, 1, 0.06, false, false, function(flick:FlxFlicker) {
					openSelectedSubstate(options[curSelected]);
				});
			});
		}

		if (controls.ACCEPT && !ClientPrefs.flashing) {
			FlxG.sound.play(Paths.sound('confirmMenu'));
			new FlxTimer().start(1, function (tmr:FlxTimer) {
				openSelectedSubstate(options[curSelected]);
			});
		}


		#if desktop
		else if (FlxG.keys.anyJustPressed(debugKeys))
		{
			MusicBeatState.switchState(new MasterEditorMenu());
		}
		#end
	}

	function changeSelection(change:Int = 0)
	{
		curSelected += change;
		if (curSelected < 0)
			curSelected = options.length - 1;
		if (curSelected >= options.length)
			curSelected = 0;

		var bullShit:Int = 0;

		for (item in grpOptions.members)
		{
			item.targetY = bullShit - curSelected;
			bullShit++;

			item.alpha = 0.6;
			if (item.targetY == 0)
			{
				item.alpha = 1;
			}
		}
		camAchievement = new FlxCamera();
		camAchievement.bgColor.alpha = 0;
		FlxG.cameras.add(camAchievement);
		#if ACHIEVEMENTS_ALLOWED
		// Unlocks "Freaky on a Friday Night" achievement
		function giveAchievement() {
			add(new AchievementObject('friday_night_play', camAchievement));
			FlxG.sound.play(Paths.sound('confirmMenu'), 0.7);
			trace('Giving achievement "friday_night_play"');
		}
		#end
		#if ACHIEVEMENTS_ALLOWED
		Achievements.loadAchievements();
		var leDate = Date.now();
		if (leDate.getDay() == 5 && leDate.getHours() >= 18) {
		var achieveID:Int = Achievements.getAchievementIndex('friday_night_play');
		if(!Achievements.isAchievementUnlocked(Achievements.achievementsStuff[achieveID][2])) { //It's a friday night. WEEEEEEEEEEEEEEEEEE
			Achievements.achievementsMap.set(Achievements.achievementsStuff[achieveID][2], true);
			giveAchievement();
			ClientPrefs.saveSettings();
		}
	}
		#end
		FlxG.sound.play(Paths.sound('scrollMenu'));
	}
}