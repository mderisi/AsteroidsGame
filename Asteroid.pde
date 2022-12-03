class Asteroid extends Floater{
  private double rotSpeed = (Math.random()*14)-7;
  private int myScaling = 3;  
  //private double mythrust = 0.1;
  
  public Asteroid(){
 
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500); 
    
    myColor = color(168, 210, 230);
    myPointDirection = (Math.random()*360);
    myXspeed = (Math.random()*8)-4;
    myYspeed = (Math.random()*8)-4;  
     
  corners = 12;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = -2;
  yCorners[0] = 12;
  xCorners[1] = 4;
  yCorners[1] = 12;
  xCorners[2] = 10;
  yCorners[2] = 8;
  xCorners[3] = 10;
  yCorners[3] = 4;
  xCorners[4] = 4;
  yCorners[4] = 2;
  xCorners[5] = 8;
  yCorners[5] = -2;
  xCorners[6] = 4;
  yCorners[6] = -8;
  xCorners[7] = 2;
  yCorners[7] = -4;
  xCorners[8] = -4;
  yCorners[8] = -8;
  xCorners[9] = -8;
  yCorners[9] = -2;  
  xCorners[10] = -6;
  yCorners[10] = 8;
  xCorners[11] = 0;
  yCorners[11] = 8;  
  
  for(int i = 0; i < corners; i++){
    xCorners[i] = xCorners[i]*myScaling;
    yCorners[i] = yCorners[i]*myScaling;
    }
  }
  
 public void move(){
  turn(rotSpeed);
  super.move();  
  }
  
}
