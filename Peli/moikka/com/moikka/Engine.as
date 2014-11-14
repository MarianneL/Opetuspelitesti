package com.moikka
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.geom.Rectangle;
	

	
	public class Engine extends MovieClip
	{
		
		public var mainMenu:MainMenu;
		public var playScreen:BG;
		public var house1Screen:House1Screen;
		
		
		public function Engine()
		{
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
			playScreen = new BG(stage);
			
			if(mainMenu)
			{
				removeChild(mainMenu);
				mainMenu = null;
			}	
			addChild(playScreen);
		}
		
		
		public function goToHouse1()
		{
			house1Screen = new House1Screen(stage);

			
			if(playScreen)
			{
				removeChild(playScreen);
				playScreen = null;
			}
			
			addChild(house1Screen);
		}

	}
}