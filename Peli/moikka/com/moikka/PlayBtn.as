package com.moikka
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class PlayBtn extends SimpleButton
	{
		public function PlayBtn(upState:DisplayObject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);
		}
	}
}