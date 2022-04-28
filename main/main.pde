import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioBuffer ab;
AudioInput ai;
AudioPlayer ap;

float startTime;
float songLength;
float [] lerpedBuffer = new float[1024];

void setup()
{
  fullScreen();

  colorMode(HSB);

  startTime = millis();

  minim = new Minim(this);
  ap = minim.loadFile("OnlyMP3.to - Cartoon - Why We Lose (Lyrics)-zTL6iep1ZKs-192k-1649942721551.mp3");
  ap.play();
  ab = ap.mix;

  songLength = ap.length();

  // halfH=height/2;
  colorInc=255/(float)ab.size();

  A = new Amelia();
  //AN = new Andre();
  
  halfH = height/2;
  colorInc= 255/(float)ab.size();
}

Amelia A;
//Andre AN;


float lerpedAverage=0;
float halfH;
float colorInc;



void draw()
{
  // background(0);

  if (millis() - startTime > songLength/2 )
  {
    A.colourWave();
  } else
  {
    A.pinkWave();
    //AN.musicWave();
  }
}
