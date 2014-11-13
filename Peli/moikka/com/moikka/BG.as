package com.moikka
{
	import com.senocular.utils.KeyObject;
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	public class BG extends MovieClip
	{
		private var key:KeyObject;
		
		public function BG(stage:Stage)
		{			
			// Lisätään pelaaja näyttämölle
			var ourPlayer:Player = new Player(stage);
			stage.addChild(ourPlayer);
			
			// Asetetaan pelaaja siihen kohtaan mihin halutaan
			ourPlayer.x = 40;
			ourPlayer.y = 276;

		}
		
	}
}