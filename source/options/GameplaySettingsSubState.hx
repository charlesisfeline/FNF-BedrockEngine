package options;

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
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class GameplaySettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Gameplay Settings';
		rpcTitle = 'Adjusting the Gameplay Settings'; //for Discord Rich Presence

		var option:Option = new Option('Center Notes', 'If checked, your notes get centered.', 'middleScroll', 'bool', false);
	addOption(option);

		var option:Option = new Option('Controller Mode', 'Check this if you want to play with\na controller instead of using your Keyboard.', 'controllerMode', 'bool', false);
	addOption(option);

		var option:Option = new Option('Disable Reset Button', "If checked, pressing Reset won't do anything.", 'noReset', 'bool', false);
	addOption(option);

		//I'd suggest using "Downscroll" as an example for making your own option since it is the simplest here
		var option:Option = new Option('Downscroll', //Name
			'If checked, notes go Down instead of Up, simple enough.', //Description
			'downScroll', //Save data variable name
			'bool', //Variable type
			false); //Default value
	addOption(option);
		
		var option:Option = new Option('Ghost Tapping', "If checked, you won't get misses from pressing keys\nwhile there are no notes able to be hit.", 'ghostTapping', 'bool', true);
	addOption(option);

		var Option = new Option('Judgement Counters', "If checked, Shows Judgement Statistics below the Info Bar", 'judgementCounters', 'bool', true);
	addOption(Option);

		var Option = new Option('Kade Engine Accuracy', "If checked, the Accuracy will be more Complex, making it Harsher than before, good for Competitive Players", 'keAccuracy', 'bool', true);
	//addOption(Option);

		var option:Option = new Option('Marvelous Ratings', 'If unchecked, marvelous ratings will disappear.', 'marvelouses', 'bool', true);
	addOption(option);

		var option:Option = new Option('Play Hit Sounds', "If checked, will play a sound when you hit a note", 'playHitSounds', 'bool', false);
	addOption(option);

		var option:Option = new Option('Play Miss Sounds', "If unchecked, Sounds for when you Miss a Note will be disabled entirely", 'playMissSounds', 'bool', true);
	addOption(option);

		var Option = new Option('Light CPU Strums', "If disabled, CPU Notes will no longer light once the CPU hits them", 'lightcpustrums', 'bool', true);
	addOption(Option);

		/*var option:Option = new Option('Note Delay',
			'Changes how late a note is spawned.\nUseful for preventing audio lag from wireless earphones.',
			'noteOffset',
			'int',
			0);
		option.displayFormat = '%vms';
		option.scrollSpeed = 100;
		option.minValue = 0;
		option.maxValue = 500;
		addOption(option);*/

		var option:Option = new Option('Rating Offset',
			'Changes how late/early you have to hit for a "Sick!"\nHigher values mean you have to hit later.',
			'ratingOffset',
			'int',
			0);
		option.displayFormat = '%vms';
		option.scrollSpeed = 20;
		option.minValue = -30;
		option.maxValue = 30;
		addOption(option);

		var option:Option = new Option('Marvelous! Hit Window',
			'Changes the amount of time you have\nfor hitting a "Marvelous!" in milliseconds.',
			'marvelousWindow',
			'int',
			35);
		option.displayFormat = '%vms';
		option.scrollSpeed = 15;
		option.minValue = 15;
		option.maxValue = 25;
		addOption(option);

		var option:Option = new Option('Sick! Hit Window',
			'Changes the amount of time you have\nfor hitting a "Sick!" in milliseconds.',
			'sickWindow',
			'int',
			45);
		option.displayFormat = '%vms';
		option.scrollSpeed = 15;
		option.minValue = 15;
		option.maxValue = 45;
		addOption(option);

		var option:Option = new Option('Good Hit Window',
			'Changes the amount of time you have\nfor hitting a "Good" in milliseconds.',
			'goodWindow',
			'int',
			90);
		option.displayFormat = '%vms';
		option.scrollSpeed = 30;
		option.minValue = 15;
		option.maxValue = 90;
		addOption(option);

		var option:Option = new Option('Bad Hit Window',
			'Changes the amount of time you have\nfor hitting a "Bad" in milliseconds.',
			'badWindow',
			'int',
			135);
		option.displayFormat = '%vms';
		option.scrollSpeed = 60;
		option.minValue = 15;
		option.maxValue = 135;
		addOption(option);

		var option:Option = new Option('Safe Frames',
			'Changes how many frames you have for\nhitting a note earlier or late.',
			'safeFrames',
			'float',
			10);
		option.scrollSpeed = 5;
		option.minValue = 2;
		option.maxValue = 10;
		option.changeValue = 0.1;
		addOption(option);

		super();
	}
}
