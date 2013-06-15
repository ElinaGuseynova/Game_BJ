package com.controller 
{
	import com.controller.events.SceneEvent;
	import com.controller.events.ScoreEvent;
	import com.model.Model;
	import com.view.scenes.Scenes;
	import com.view.View;
	import flash.events.KeyboardEvent;

	public class Controller
	{
		
		private var model:Model;
		private var view:View;
		
		public function Controller( model:Model, view:View ) 
		{
			this.model = model;
			this.view = view;
			
			Main.I.stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyBoardEvent);
			view.addEventListener(SceneEvent.CHANGE, onSceneChange);
			model.addEventListener(SceneEvent.CHANGE, onSceneChange);
			view.addEventListener(ScoreEvent.CHANGE, onScoreChange);
			
		}
		
		private function onScoreChange(e:ScoreEvent):void
		{
			model.setScore( e.score );
		}
		
		private function onSceneChange(e:SceneEvent):void
		{
			model.setScene( e.scene );
			view.changeScene( e.scene );
			
			switch (e.scene) {
				case Scenes.GAME_SCENE:
					
				break;
				case Scenes.SCORE_SCENE:
					view.showScore( model.getScore() );
				break;
				case Scenes.START_SCENE: default:
					
				break;
			}
		}
		
		private function onKeyBoardEvent(e:KeyboardEvent):void
		{
			if ( Direction.hasDirection(e.keyCode) )
			{
				if ( model.getScene() == Scenes.GAME_SCENE )
				{
					switch ( e.keyCode )
					{						
						case Direction.LEFT:
							view.moveHeroLeft();
						break;
						case Direction.RIGHT:
							view.moveHeroRight();
						break;
					}
				}
			}
		}
		
	}

}