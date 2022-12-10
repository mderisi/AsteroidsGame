Star[] nightSky = new Star[200];
Spaceship bob = new Spaceship();
ArrayList<Asteroid> AsteroidList = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
int numframes = 0; 

public void setup() 
{
  frameRate(30);
  size(500, 500);

  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  
  for(int i = 0; i < 6; i++){
    AsteroidList.add(new Asteroid());
  }
  

  
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i < AsteroidList.size(); i++){
    Asteroid rock = AsteroidList.get(i);
    rock.move();
    rock.show(); 
   float d = dist((float)bob.myCenterX, (float)bob.myCenterY, (float)rock.myCenterX, (float)rock.myCenterY);
   if(d < 30)
   AsteroidList.remove(i);

  }
  
  for(int n = 0; n < shots.size(); n++){
    shots.get(n).move();
    shots.get(n).show();
    System.out.println("s: " + shots.size());
    Bullet shot = shots.get(n);
    
    for(int i = 0; i < AsteroidList.size(); i++){
      Asteroid rock = AsteroidList.get(i);
      float d = dist((float)shot.myCenterX, (float)shot.myCenterY, (float)rock.myCenterX, (float)rock.myCenterY);
      if(d < 30){
         AsteroidList.remove(i);
         shots.remove(n);
         break;
      }
     }
    // Limited shots to 50 frames of animation
    //frame at given time minus the frame number bullet was fired at
    if ( (numframes - shot.shotframe) > 50) {
      shots.remove(n);
    }
    
  
  }
  
 
  bob.move();
  bob.show();
  bob.keyPressed();
  numframes++;
  //new frame every time drawn
}
