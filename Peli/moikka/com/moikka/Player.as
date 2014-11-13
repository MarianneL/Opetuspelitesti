package com.moikka
{
	import com.senocular.utils.KeyObject;
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	public class Player extends MovieClip
	{
		private var stageRef:Stage;
		private var key:KeyObject;
		private var speed:Number = 10;
		
		// tallennetaan tieto siitä, onko painettu vasenta tai oikeaa liikenäppäintä
		private var leftPressed:Boolean = false;
		private var rightPressed:Boolean = false;
		
		// määrittää sen mikä animaatio ukkelilla pyörii
		var animationState:String = "idle";
		
		public function Player(stageRef:Stage)
		{
			this.stageRef = stageRef;
			key = new KeyObject(stageRef);
			
			addEventListener(Event.ENTER_FRAME, loop, false, 0, true);
		}
		
		
		public function loop(e:Event):void
		{
			// Jos painetaan vasenta tai A näppäintä...
			if(key.isDown(Keyboard.LEFT) || key.isDown(Keyboard.A))
			{
				// ...se tallennetaan painetuksi
				leftPressed = true;
				// ukkseli liikkuu x-akselilla speedin määräämällä nopeudella
				x -= speed;
			}
			else
				// Kun vasen tai A näppäintä ei paineta, se tallennetaan "ei painetuksi" :DDD
				leftPressed = false;
			
			// Sama kuin edellinen, mutta oikealle ja D näppäimelle
			if(key.isDown(Keyboard.RIGHT) || key.isDown(Keyboard.D))
			{
				x += speed;
				rightPressed = true;
			}
			else
				rightPressed = false;
			
			
			// Jos oikea näppäin on pohjassa...
			if(rightPressed)
				// animaatioksi vaihtuu oikealle kävelevä ukkeli
				animationState = "walkingRight";
			// Jos vasen näppäin on pohjassa...
			else if(leftPressed)
				// animaatioksi vaihtuu vasemmalle kävelevä ukkeli
				animationState = "walkingLeft";
			// Jos kumpikaan näppäin ei ole pohjassa... (! = not, eli "not rightPressed")
			else if(!rightPressed && !leftPressed)
				//...animaationa on idle
				animationState = "idle";
			
			
			// Tämän avulla pysytään pelialueella
			if(x > 810 /*stageRef.stageWidth*/)
			{
				x = 810 /* stageRef.stageWidth*/;
			}
			else if(x < 0)
				x = 0;
			
			// currentLabel katsoo flashissä ukkelin timelinelta, missä labelissa ollaan (labelit: idle, walking.)
			// Jos label ei ole sama kuin se animaatio jonka pitäisi pyöriä, animaatio vaihdetaan oikeaksi
			if(this.currentLabel != animationState)
				this.gotoAndStop(animationState);
		}
		
		
	}
}