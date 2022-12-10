class Spaceship extends Floater {  
  private int myrotationspeed = 10;
  private int mylastframe = 0;
  private double mythrust = 0.1;
  private int lastshotframe = 0;
  
  public Spaceship(){
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myCenterX = 250;
    myCenterY = 250;
    myColor = 255;
    myPointDirection = 0;
    myXspeed = 0;
    myYspeed = 0;
    
  }
  
  public void keyPressed(){
    if (key == 'b'){
      myXspeed = 0;
      myYspeed = 0;
    }     
    if ((key == 'h') && (keyPressed)) {
      hyperspace();
    }
    
    if ((key == ' ') && (keyPressed) && ( (numframes- lastshotframe) > 10)  ){
      shots.add(new Bullet(bob));
      lastshotframe = numframes;
      
    }
    
   if(key == CODED){
    
    if((keyCode == LEFT) && (keyPressed)){
      turn(myrotationspeed*(-1));
    }
    if((keyCode == RIGHT) && (keyPressed)){
      turn(myrotationspeed);
    }
    if((keyCode == UP) && (keyPressed)){
      accelerate(mythrust);
    }
   }
  }
  
  public void hyperspace(){
         // use the framecount to prevent hyperspace repeating too fast
         if ( frameCount > (mylastframe + 4) ) {
         myXspeed = 0;
         myYspeed = 0;
         myCenterX = (Math.random()*500);
         myCenterY = (Math.random()*500);
         turn(Math.random()*360);
         }
         mylastframe = frameCount;
  } 
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getPointDirection(){return myPointDirection;}
  //getters for speed
  public double getXspeed(){return myXspeed;}
  public double getYspeed(){return myYspeed;}
}
