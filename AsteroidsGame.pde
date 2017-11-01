Spaceship elon = new Spaceship ();
Star [] nightSky = new Star [200];
public void setup() 
{
  size (500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
  	nightSky[i] = new Star();
  }
}
public void draw() 
{
 background(0);
 for (int i = 0; i < nightSky.length; i++)
 {
 	nightSky[i].show();
 }	
 elon.show();
 elon.move();
}
public void keyTyped()
{
	if(key == ' ')
	{
		elon.setDirectionX(0);
		elon.setDirectionY(0);
		elon.setPointDirection((int)(Math.random()*360));
		elon.setX((int)(Math.random()*500));
		elon.setY((int)(Math.random()*500));
	}
	if(key == 'w')
	{
		elon.accelerate(0.3);
	}
	if(key == 'a')
	{
		elon.turn(-10);
	}
	if(key == 'd')
	{
		elon.turn(10);
	}
	if(key == 's')
	{
		elon.accelerate(-0.3);
	}	

}


