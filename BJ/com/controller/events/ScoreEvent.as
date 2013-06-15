package com.controller.events 
{
	import flash.events.Event;

	public class ScoreEvent extends Event 
	{
		
		static public const CHANGE:String = "ScoreEvent_CHANGE";
		
		public var score:int;
		
		public function ScoreEvent(type:String, score:int, bubbles:Boolean=true, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			this.score = score;
		} 
		
		public override function clone():Event 
		{ 
			return new ScoreEvent(type, score, bubbles, cancelable);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("ScoreEvent", "type", "score", "bubbles", "cancelable", "eventPhase"); 
		}
		
	}
	
}