package com.controller.events 
{
	import flash.events.Event;
		
	public class SceneEvent extends Event 
	{
		static public const CHANGE:String = "SceneEvent_CHANGE";
		
		public var scene:uint;
		
		public function SceneEvent(type:String, scene:uint, bubbles:Boolean=true, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			this.scene = scene;
		} 
		
		public override function clone():Event 
		{ 
			return new SceneEvent(type, scene, bubbles, cancelable);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("SceneEvent", "type", "scene", "bubbles", "cancelable", "eventPhase"); 
		}
		
	}
	
}