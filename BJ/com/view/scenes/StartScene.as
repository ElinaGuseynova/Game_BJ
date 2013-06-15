package com.view.scenes 
{
	import com.controller.events.SceneEvent;
	import flash.display.SimpleButton;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	//import flash.system.fscommand;

	public class StartScene extends MovieClip
	{
		
		public var startButton:SimpleButton;
						
		public function StartScene() 
		{
			startButton.addEventListener(MouseEvent.CLICK, onStartButtonClick);
		}
		
		private function onStartButtonClick(e:MouseEvent):void
		{
			dispatchEvent( new SceneEvent(SceneEvent.CHANGE, Scenes.GAME_SCENE) );
		}
				
				
	}

}