package com.model 
{
	import com.controller.Controller;
	import com.view.View;

	public class Game
	{
		
		private var model:Model;
		private var view:View;
		private var controller:Controller;
		
		public function Game() 
		{

			model = new Model();
			view = new View();
			controller = new Controller( model, view );
		}
		
	}

}