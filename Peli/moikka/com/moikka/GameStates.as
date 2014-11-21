package com.moikka
{
	public class GameStates
	{
		public static const MENU:int = 0;
		public static const PLAY:int = 1;
		public static const WAIT_FOR_INPUT:int = 2;
		public static const GAME_OVER:int = 3;
		
		public static var current_game_state:int;
	}
}