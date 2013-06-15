package com.controller 
{

	public class Direction
	{
		
		static public const LEFT:uint = 37;
		static public const RIGHT:uint = 39;
		static public const UP:uint = 38;
		static public const DOWN:uint = 40;
		
		static public function hasDirection( code:uint ):Boolean
		{
			if ( code == 38 || code == 40 || code == 37 || code==39)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		
	}

}