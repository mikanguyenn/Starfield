Particle mika[];
void setup(){
  size(500,500);
  mika = new Particle[1000];
  for(int i = 0; i < mika.length; i++)
  mika[i]  = new OddballParticle();
  for(int i = 5; i < mika.length; i++)
   mika[i] = new Particle();
}
void draw(){
  background(0);
   frameRate(30);

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
    myY = Math.random()*50+250;
  }
  void move(){
    myX = myX + (Math.random()*10)-5;
    myY = myY + (Math.random()*10)-5;
  }
  void show(){
    rect((int)myX,(int)myY,50,50);
  }
}
