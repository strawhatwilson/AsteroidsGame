class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid ()
	{
		rotSpeed = (int)((Math.random()*5)-2);
		corners = 6;
		xCorners = new int [corners];
		yCorners = new int [corners];
		xCorners[0] = -7;
		yCorners[0] = -8;
		xCorners[1] = 7;
		yCorners[1] = -8;
		xCorners[2] = 5;
		yCorners[2] = 0;
 		xCorners[3] = 7;
 		yCorners[3] = 8;
 		xCorners[4] = -7;
 		yCorners[4] = 8;
 		xCorners[5] = -5;
 		yCorners[5] = 0;
 		myColor = (255);
 		myCenterX = Math.random()*500;
 		myCenterY = Math.random()*500;
		myDirectionX = myDirectionY = 1;
		myPointDirection = 0;
 	}
 	public void setX (int x) {myCenterX=x;}
	public int getX() {return (int)myCenterX;}
	public void setY (int y) {myCenterY=y;}
	public int getY() {return(int)myCenterY;}
	public void setDirectionX (double x) {myDirectionX = x;}
	public double getDirectionX () {return myDirectionX;}
	public void setDirectionY (double y) {myDirectionY = y;}
	public double getDirectionY () {return myDirectionY;}
	public void setPointDirection (int degrees) {myPointDirection = degrees;;}
	public double getPointDirection () {return myPointDirection;}
	public void move()
	{
		turn(rotSpeed);
		super.move();
	}
}
