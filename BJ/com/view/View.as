package com.view 
{
	import com.view.scenes.*;
	import flash.display.Sprite;

	public class View extends Sprite
	{
		
		private var startScene:StartScene;
		private var gameScene:GameScene;
		private var scoreScene:ScoreScene;
		
		public function View() 
		{
			Main.I.addChild(this);
			changeScene( Scenes.START_SCENE );
		}
		
		public function changeScene( sceneId:uint ):void
		{
			if ( startScene != null ) if ( contains(startScene) ) removeChild(startScene);
			if ( gameScene != null ) if ( contains(gameScene) ) removeChild(gameScene);
			if ( scoreScene != null ) if ( contains(scoreScene) ) removeChild(scoreScene);
			
			switch (sceneId) {
				case Scenes.GAME_SCENE:
					gameScene = new GameScene();
					addChild(gameScene);
				break;
				case Scenes.SCORE_SCENE:
					scoreScene = new ScoreScene();
					addChild(scoreScene);
				break;
				case Scenes.START_SCENE: default:
					startScene = new StartScene();
					addChild(startScene);
				break;
			}
		}
		
		public function showScore( score:int ):void {
			scoreScene.showScore( score );
		}
		
		public function moveHeroLeft():void
		{
			gameScene.moveHeroLeft();
		}
		public function moveHeroRight():void
		{
			gameScene.moveHeroRight();
		}
	}

}