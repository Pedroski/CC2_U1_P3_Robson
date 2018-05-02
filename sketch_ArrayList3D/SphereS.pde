class SphereS
{
  PVector position;
  PVector direction;
  PVector mouse;
  float rotate;
  float sphereSize;
  float speed;
  color c;
  
  SphereS()
  {
    position = new PVector(width/2,height/2,0);
    direction = new PVector(1,0,0);
    rotate = 0;
    sphereSize = 5;
    speed = -5;
  }
  
  SphereS(float _x,float _y,float _z)
  {
    mouse = new PVector(mouseX,mouseY,800);
    position = new PVector(width/2,height/2,0);
    //direction = new PVector(20,0,0);
    direction = PVector.sub(mouse,position);
    speed = direction.mag();
    rotate = 5;
    direction.normalize();
    direction.mult(5);
    sphereSize = 5;
    c = color(random(255),120,255);
  }
  
  void Update()
  {
    position.add(direction);
    pushMatrix();
    translate(position.x,position.y,position.z);
    noStroke();
    println(position);
    fill(c);
    box(sphereSize);
    rotateZ(rotate);
    popMatrix();
    //c = color(random(255),120,255);
  }
  
}