class Amelia{
  
  
  void colourWave()
  {
    background(0);
    //stroke(240, 182, 213);
    float sum=0;
    for (int i=0; i<ab.size(); i++)
    {
      stroke(colorInc*i, 255, 255);
      line(i, height/2, i, (height/2)+ab.get(i)*250);
      sum+=abs(ab.get(i));
      // line(i, halfH-lerpedBuffer[i]*halfH, i, halfH+lerpedBuffer[i]*halfH);
      //  lerpedBuffer [i]=lerp(lerpedBuffer[i], ab.get(i), 0.1f);
    }
     float average=sum/(float)ab.size();
     lerpedAverage=lerp(lerpedAverage, average, 0.1f);
    // fill(204,169,221);
    // circle(width/2,height/2,average*200);
  }

  void pinkWave()
  {
    background(0);
    stroke(#f0b6d5);
    float sum=0;
    for (int i=0; i<ab.size(); i++)
    {
      line(i, height/2, i, (height/2)+ab.get(i)*250);
      sum+=abs(ab.get(i));
      // stroke(colorInc*i, 255, 255);
      //  line(i, halfH-lerpedBuffer[i]*halfH, i, halfH+lerpedBuffer[i]*halfH);
      // lerpedBuffer [i]=lerp(lerpedBuffer[i], ab.get(i), 0.1f);
    }
    float average=sum/(float)ab.size();
    lerpedAverage=lerp(lerpedAverage, average, 0.1f);
    // fill(204,169,221);
    // circle(width/2,height/2,average*200);
  }
}
