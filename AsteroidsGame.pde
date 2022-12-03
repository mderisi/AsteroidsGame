Star[] nightSky = new Star[200];
Spaceship bob = new Spaceship();
ArrayList<Asteroid> AsteroidList = new ArrayList <Asteroid>();


public void setup() 
{
  frameRate(30);
  size(500, 500);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  
  for(int i = 0; i < 5; i++){
    AsteroidList.add(new Asteroid());
  }
  
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i <AsteroidList.size(); i++){
    Asteroid rock = AsteroidList.get(i);
    rock.move();
    rock.show(); 
   float d = dist((float)bob.myCenterX, (float)bob.myCenterY, (float)rock.myCenterX, (float)rock.myCenterY);
   if(d < 30)
   AsteroidList.remove(i);

  }
  bob.move();
  bob.show();
  bob.keyPressed();
  
}


