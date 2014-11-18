package com.moikka
{
	import com.senocular.utils.KeyObject;
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	import flash.ui.Keyboard;
	
	public class BG extends MovieClip
	{
		public var mainClass:Engine;
		private var stageRef:Stage;
		
		public function BG(stage:Stage)
		{						
			// Lisätään pelaaja näyttämölle
			var ourPlayer:Player = new Player(stage);
			stage.addChild(ourPlayer);
			
			// Asetetaan pelaaja siihen kohtaan mihin halutaan
			ourPlayer.x = 40;
			ourPlayer.y = 276;
			
			
			
			//house1.addEventListener(MouseEvent.CLICK, house1Clicked);
		}

		
		public function house1Clicked(event:MouseEvent)
		{
			mainClass.goToHouse1();	
		}


	}
}