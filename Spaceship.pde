class Spaceship extends Floater 
{ 
	public Spaceship()
	{
		corners = 8;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -6;
		yCorners[0] = -6;
		xCorners[1] =  0;
		yCorners[1] = -2;
		xCorners[2] =  6;
		yCorners[2] = -6;
		xCorners[3] =  2;
		yCorners[3] =  0;
		xCorners[4] =  6;
		yCorners[4] =  6;
		xCorners[5] =  0;
		yCorners[5] =  2;
		xCorners[6] = -6;
		yCorners[6] =  6;
		xCorners[7] = -2;
		yCorners[7] =  0; 
		myColor = 255;
		myCenterX = myCenterY = 250;
		myDirectionX= myDirectionY = 0;
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
}

