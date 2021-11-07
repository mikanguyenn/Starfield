Particle mika[];
void setup(){
  size(500,500);
  mika = new Particle[400];
  for(int i = 0; i < mika.length; i++)
  mika[i]  = new OddballParticle();
  for(int i = 5; i < mika.length; i++)
   mika[i] = new Particle();
}
void draw(){
  background(173,216,230);
   frameRate(30);
  for(int i = 0; i < mika.length; i++){
    mika[i].move();
    mika[i].show();
  }
}
 //void mousePressed(){
  //redraw();
// }
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
  //noStroke();
  ellipse((float)myX+5,(float)myY-1,17,15);
  ellipse((float)myX+5,(float)myY+6,15,13);
  ellipse((float)myX-5,(float)myY+6,14,14);
  ellipse((float)myX-5,(float)myY-1,15,15);
  ellipse((float)myX,(float)myY-5,14,14);
  fill(#FFFF66);
  ellipse((float)myX,(float)myY+1,9,9); //make flowers
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
   //make birds
   fill(165,42,42);
   triangle((int)myX-25,(int)myY-7,(int)myX-35,(int)myY,(int)myX-25,(int)myY+7);
   fill(#FFFF66);
   ellipse((int)myX,(int)myY,50,50);
   //arc((int)myX+8,(int)myY+2, 20, 20, 0, PI+QUARTER_PI, CHORD);
   fill(0);
   ellipse((int)myX-15,(int)myY-7,5,10);
  }
}
