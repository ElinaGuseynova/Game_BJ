package  
{
	import flash.display.Sprite;
	import com.model.Game;

	public class Main extends Sprite
	{
		
		static public var I:Main;
		private var game:Game;
		
		public function Main() 
		{
			
			I = this; // инициализация статичной переменной с областью видимости public для получения ссылки на главную сцену
						
			game = new Game(); // инициализация игры
		}
		
	}

}