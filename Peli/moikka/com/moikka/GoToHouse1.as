package com.moikka
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class GoToHouse1 extends MovieClip
	{
		public function GoToHouse1(stage:Stage)
		{
			var addHouse1:House1Screen = new House1Screen(stage);
			stage.addChild(addHouse1);
		}
	}
}