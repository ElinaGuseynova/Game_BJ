package com.view.scenes 
{
	import flash.display.MovieClip;
	import flash.text.TextField;

	public class ScoreScene extends MovieClip
	{
		
		public var score:TextField;
		
		public function ScoreScene() 
		{
			
		}
		
		public function showScore( score:int ):void
		{
			this.score.text = score.toString();
		}
		
	}

}