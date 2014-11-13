package com.moikka
{
	import com.senocular.utils.KeyObject;
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.ui.Keyboard;
	
	public class Player extends MovieClip
	{
		private var stageRef:Stage;
		private var key:KeyObject;
		private var speed:Number = 10;
		
		public function Player(stageRef:Stage)
		{
			this.stageRef = stageRef;
			key = new KeyObject(stageRef);
			
			addEventListener(Event.ENTER_FRAME, loop, false, 0, true);
		}
		
		public function loop(e:Event):void
		{
			if(key.isDown(Keyboard.LEFT) || key.isDown(Keyboard.A))
				x -= speed;
			else if(key.isDown(Keyboard.RIGHT) || key.isDown(Keyboard.D))
				x += speed;
			
			// stay inside the screen
			if(x > 810 /*stageRef.stageWidth*/)
			{
				x = 810 /* stageRef.stageWidth*/;
			}
			else if(x < 0)
				x = 0;
		}
	}
}