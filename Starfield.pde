Particle mika[];
void setup(){
  size(500,500);
  mika = new Particle[1000];
  //for(int i = 0; i < mika.length; i++)
  //mika[i]  = new Particle();
  for(int i = 0; i < mika.length; i++)
   mika[i] = new Particle();
}
void draw(){
  background(0);
  for(int i = 0; i < mika.length; i++){
    mika[i].move();
    mika[i].show();
  }
}
class Particle{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle(){
    myX = Math.random()*30+225; 
    myY = Math.random()*30+225;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
    mySpeed = Math.random()*10;
    myAngle = Math.random()*2*Math.PI;
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
  fill(myColor);
  noStroke();
  ellipse((float)myX,(float)myY,10,10);
  }
}

class OddballParticle extends Particle{ //inherits from Particle
  OddballParticle(){
    myX = Math.random()*50+250;
    myY = Math.random()*50+250;;
    mySpeed= Math.random()*2;
    myAngle= Math.random()*2*Math.PI;
  }
}


