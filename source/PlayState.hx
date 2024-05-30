package;

import flixel.FlxState;
import flixel.input.FlxAccelerometer;
import flixel.math.FlxRandom;
import flixel.text.FlxText;

var random = new FlxRandom();

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		var suits = ["Diamonds", "Clubs", "Hearts", "Spades"];
		var nums = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"];
		var num = nums[random.int(0, nums.length - 1)];
		var suit = suits[random.int(0, suits.length - 1)];
		trace(num);
		trace(nums.length);
		var cardText = new FlxText(0, 0, 0, '$num of $suit', 24);
		cardText.screenCenter();
		add(cardText);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
