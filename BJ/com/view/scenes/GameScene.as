package com.view.scenes 
{
	import com.controller.events.SceneEvent;
	import com.controller.events.ScoreEvent;
	import com.view.elements.Thing  ;
	import com.view.elements.Sandworm;
	import com.view.elements.GameSceneBackground;
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.events.Event;

	public class GameScene extends MovieClip 
	{
		
		private var things :Array = [];
		private var sandworm:Sandworm ;
		private var background:GameSceneBackground;
		
		public function GameScene() 
		{
			background = new GameSceneBackground();
			addChild(background);
			
			sandworm  = new Sandworm ();
			addChild(sandworm);
			
			addThings( 3 );
			
			addEventListener(Event.ENTER_FRAME, onEveryFrame);
			addEventListener(SceneEvent.CHANGE, onSceneEvent);
		}
		
			
		public function moveHeroLeft():void {
			sandworm.x += -7;
		}
		
		public function moveHeroRight():void {
			sandworm.x += 7;
		}
		
		
		private function addThings( count:uint = 1 ):void
		{
			for ( var i:uint = 0; i < count; i++ ) {
				things.push(
					new Thing(
						60 + Math.round( 450 * Math.random() ),
						650+ Math.round( 300 * Math.random() )
					)
				);
				
				addChild( things [ things.length - 1 ] );
			}
		}
		
		private function checkCollision( object_1:DisplayObject, object_2:DisplayObject ):Boolean
		{
			return object_1.hitTestObject(object_2);
		}
		
		private function onEveryFrame( e:Event ):void
		{
			var thingsCount:uint = things.length;
			for ( var i:uint = 0; i <  thingsCount; i++ ) {
				if ( checkCollision(things[i], sandworm) ) {
					removeThing(i);
					
					dispatchEvent( new ScoreEvent( ScoreEvent.CHANGE, 1 ) );
					addThings( 1 );
				}
			}
		}
		
		private function onSceneEvent(e:SceneEvent):void
		{
			if ( e.scene == Scenes.SCORE_SCENE ) {
				var thingsCount:uint = things.length;
				for ( var i:uint = 0; i < thingsCount; i++ ) {
					removeThing(i);
				}
			}
		}
		
		private function removeThing( i:uint ):void
		{
			things[i].destroy();
			removeChild(things[i]);
			things.splice(i, 1);
		}
		
	}

}