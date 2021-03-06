package com.moikka
{
	import com.moikka.Player;
	import com.moikka.BG;
	
	import com.senocular.utils.KeyObject;
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;	
	
	public class Level1 extends MovieClip
	{
		private var stageRef:Stage;
		private var mainClass:Engine;
		
		public function Level1(stage:Stage)
		{
			//Lisätään tausta näyttämölle
			var myBg:BG = new BG(stage);
			stage.addChild(myBg);
			// Lisätään pelaaja näyttämölle
			var myPlayer:Player = new Player(stage);
			stage.addChild(myPlayer);
			
			// Asetetaan pelaaja siihen kohtaan mihin halutaan
			myPlayer.x = 40;
			myPlayer.y = 276;
			
		}
	}
}