package com.view.elements 
{
	import flash.display.MovieClip;
	import flash.events.Event;

	public class Thing extends MovieClip
	{
		
		private const SPEED:uint = 2;
		
		public function Thing ( x:int = 250, y:int = 2 ) 
		{
			this.x = x;
			this.y = y;
						
			addEventListener(Event.ENTER_FRAME, onEveryFrame);
		}
		
		private function onEveryFrame(e:Event):void
		{
			y += SPEED;
			if ( y > 650 ) {
				y = 2;
			}
		}
		
		public function destroy():void
		{
			removeEventListener(Event.ENTER_FRAME, onEveryFrame);
		}

	}

}