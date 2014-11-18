package com.moikka
{
	import com.moikka.Engine;
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.MouseEvent;
	
	public class BG extends MovieClip
	{
		public var mainClass:Engine;
		
		public function BG(stage:Stage)
		{						
			var house1btn:House1Btn = new House1Btn();
			addChild(house1btn);
			
			house1.addEventListener(MouseEvent.CLICK, house1Clicked);
		}

		
		public function house1Clicked(event:MouseEvent)
		{
			mainClass.goToHouse1();	
		}


	}
}