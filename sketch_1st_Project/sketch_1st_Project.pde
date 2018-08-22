//Variable for Marble Race image
PImage Race;
//Variable for X value of race
float Racex=0;
//Variable for Y value of race
float Racey=0;
//variable for X value of ellipse
float EllipseX=225; 
//variable for Y value of ellipse
float EllipseY=125; 
void setup()
{    fill(0, 0, 0);
  size(800, 800);
  Race= loadImage("race.jpg");
  Race.resize(800, 800);
}
void draw()
{
  image(Race, Racex, Racey);
  ellipse(EllipseX, EllipseY, 40, 40);
  EllipseX=EllipseX+0.5;
  EllipseY=EllipseY+0.1;
  
  //To get the ball rolling down the first time
  if (EllipseX>600)
  {
    EllipseY=EllipseY+1;
  }
  //Ball turning 
  if (EllipseY>230)
  {
    EllipseX=EllipseX-1;
  }
  //Ball rolling down
  if (EllipseX<224)
  {
    EllipseY=EllipseY+1;
  }
  //Ball turning
  if (EllipseY>380)
  {
    EllipseX=EllipseX+1.2;
  }
  //Ball Dropping
  if (EllipseX>600)
  {
    EllipseY=EllipseY+1;
  }
  //Ball turning
 if(EllipseY>550)
 {
  EllipseX=EllipseX-1; 
 }
 //Ball Dropping
 if(EllipseX>700)
 {
  EllipseY=EllipseY-1; 
 }
 //Ball turning
 if(EllipseY>550)
 {
   EllipseX=EllipseX-1.4;
 }
 //Ball dropping
 if(EllipseX<225)
 {
  EllipseY=EllipseY+1; 
 }

 
}
void keyPressed()
{fill (random(0,255),(random(0,255)),(random(0,255)));
  
}
