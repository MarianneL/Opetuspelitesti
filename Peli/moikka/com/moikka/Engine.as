package com.moikka
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.geom.Rectangle;
	

	
	public class Engine extends MovieClip
	{
		
		public var mainMenu:MainMenu;
		public var playScreen:Level1;
		public var house1Screen:GoToHouse1;
		
		
		public function Engine()
		{
			// Aluksi tuodaan näytölle Main Menu
			showMainMenu();		
		}
		
		
		public function showMainMenu()
		{		
			mainMenu = new MainMenu(this);
			
			if(playScreen)
			{
				removeChild(playScreen);
				playScreen = null;
			}
	
			addChild(mainMenu);
		}	

		
		public function playTheGame()
		{
			playScreen = new Level1(stage);
			
			if(mainMenu)
			{
				removeChild(mainMenu);
				mainMenu = null;
			}	
			addChild(playScreen);
		}
		
		
		public function goToHouse1()
		{
			house1Screen = new GoToHouse1(stage);
			
			if(playScreen)
			{
				removeChild(playScreen);
				playScreen = null;
			}
			
			addChild(house1Screen);
		}

	}
}