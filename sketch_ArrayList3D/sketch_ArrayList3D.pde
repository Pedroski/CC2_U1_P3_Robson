SphereS spheres;
ArrayList<SphereS> Spheres = new ArrayList<SphereS>();
void setup()
{
  size(800,800,P3D);
  spheres = new SphereS();
  colorMode(HSB);
}

void draw()
{
  lights();
  //spheres.Update();
  for(int i=Spheres.size()-1; i >=0; i--)
  {
    Spheres.get(i).Update();
    if(Spheres.get(i).position.x>width)
    {
      Spheres.remove(i);
    }
    if(Spheres.get(i).position.x<0)
    {
      Spheres.remove(i);
    }
    if(Spheres.get(i).position.y>height)
    {
      Spheres.remove(i);
    }
    if(Spheres.get(i).position.y<0)
    {
      Spheres.remove(i);
    }
  }
  Spheres.add(new SphereS(mouseX,mouseY,0));
}