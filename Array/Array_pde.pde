
//background
PImage London;
//rain
PImage Rain;
float Xs [] = new float [500];
float Ys [] = new float [500];
//rain2
float As [] = new float [500];
float Bs [] = new float [500];
//rain3
float Cs [] = new float [500];
float Ds [] = new float [500];
//rain4
float Es [] = new float [500];
float Fs [] = new float [500];
//sun
PImage Sun;
int y=700;
int SunX = 0;
//cloud
PImage Cloud;
void setup()
{
  size(800, 800);
  //rain
  for (int i=0; i<500; i++)
  {
    Xs[i] = random(0, width);
    Ys[i] = random(0, height);
  }
  Rain = loadImage("raindrop.png");
  Rain.resize(5, 10);
  //rain2
  for (int i=0; i<500; i++)
  {
    As[i] = random(0, width);
    Bs[i] = random(0, height);
  }
  Rain = loadImage("raindrop.png");
  Rain.resize(5, 10);
  //rain3
  for (int i=0; i<500; i++)
  {
    Cs[i] = random(0, width);
    Ds[i] = random(0, height);
  }
  Rain = loadImage("raindrop.png");
  Rain.resize(5, 10);
  //rain4
  for (int i=0; i<500; i++)
  {
    Es[i] = random(0, width);
    Fs[i] = random(0, height);
  }
  Rain = loadImage("raindrop.png");
  Rain.resize(5, 10);
  //background
  London = loadImage("London.jpg");
  London.resize(800, 800);
  //sun
  Sun = loadImage("Sun.png");
  Sun.resize(100, 100);
  //cloud
  Cloud = loadImage("cloud.png");
  Cloud.resize(400,200);
  //cloud2
  Cloud = loadImage("cloud.png");
  Cloud.resize(400,200);
}
void draw()
{
  //background
  background(London);
  //sun 
  if (millis() > 5000)
  {
    image(Sun, 700, 0);
  }
  //cloud
  if (millis() < 4000)
  {
    image(Cloud, 300, 0);
  }
  //cloud2
  if (millis() < 4000)
  {
    image(Cloud, 100, 0);
  }
//cloud3
 if (millis() < 4000)
  {
    image(Cloud, 500, 0);
  }
  //rain1
  if (millis() < 6000)
  {
    for (int i=0; i<500; i++)
    {
      image (Rain, Xs[i], Ys[i]);
      Ys[i] = Ys[i] + 5;
      if (Ys[i] > height)
      {
        Ys[i] = 0;
      }
    }
  } 
  //rain2
  if (millis() < 2000)
  {
    for (int i=0; i<500; i++)
    {
      image (Rain, As[i], Bs[i]);
      Bs[i] = Bs[i] + 5;
      if (Bs[i] > height)
      {
        Bs[i] = 0;
      }
    }
  } 
  //rain3
  if (millis() < 3000)
  {
    for (int i=0; i<500; i++)
    {
      image (Rain, Cs[i], Ds[i]);
      Ds[i] = Ds[i] + 5;
      if (Ds[i] > height)
      {
        Ds[i] = 0;
      }
    }
  } 
  //rain4
  if (millis() < 4000)
  {
    for (int i=0; i<500; i++)
    {
      image (Rain, Es[i], Fs[i]);
      Fs[i] = Fs[i] + 5;
      if (Fs[i] > height)
      {
        Fs[i] = 0;
      }
    }
  }
}
void keyPressed()
{
  //right
  if (key == CODED)
    if (keyCode == UP)
    {
      y=y-5;
    }
}
