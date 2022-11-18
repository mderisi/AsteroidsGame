Star[] nightSky = new Star[200];
Spaceship bob = new Spaceship();

public void setup() 
{
  frameRate(30);
  size(500, 500);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  bob.move();
  bob.show();
  bob.keyPressed();
}


