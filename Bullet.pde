class Bullet extends Floater{
  
  private int shotframe = 0;
  
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    accelerate(5);
    shotframe = numframes; //frame bullet is fired
    
  }
  public void show(){
    fill(#FCFF52);
    ellipse((float)myCenterX,(float)myCenterY, 10, 10);
  }
}
