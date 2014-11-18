package com.moikka
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class House1Btn extends SimpleButton
	{
		public function House1Btn(upState:DisplayObject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);
		}
	}
}