Spaceship elon = new Spaceship ();
Star [] nightSky = new Star [200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
public void setup() 
{
  size (500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
  	nightSky[i] = new Star();
  }
  for (int j = 0; j < 15; j++)
  {
  	rocks.add(j, new Asteroid());
  }              
}          
public void draw() 
{						
 background(0);
 for (int i = 0; i < nightSky.length; i++)
 {
 	nightSky[i].show();
 }
 for (int j = 0;  j < rocks.size(); j++)
 {
 	rocks.get(j).show();
 	rocks.get(j).move();

 	double d = dist(elon.getX(),elon.getY(),rocks.get(j).getX(),rocks.get(j).getY());
  		if (d < 10)
  			rocks.remove(j);
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
		elon.turn(-100);
	}
	if(key == 'd')
	{
		elon.turn(100);
	}
	if(key == 's')
	{
		elon.accelerate(-0.3);
	}	

}


