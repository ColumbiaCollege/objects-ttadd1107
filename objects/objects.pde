Circle thecircle;

void setup() {
  size(1000, 800);

  background(0);
  fill(255);
  thecircle = new Circle( width/2, height/2, 60 );
}
void draw() {
  background(0);
  thecircle.Move();
  thecircle.Display();
}

class Circle {
  int x;
  int y;
  int size;  
  int vspeed = 0;
  int hspeed = 0;
   
  Circle(int tempX, int tempY, int tempSZ ) {

    x = tempX;
    y = tempY;   
    size = tempSZ;
  }


  void Move() {
    keyTyped();
    x = x + hspeed;
    y = y + vspeed;
    if (x> width) {
      x = 10;
    }
    if (y>height) {
      y  = 10;
    }
    if (x<0) {
      x = width - 10;
    }
    if (y<0) {
      y = height - 10;
    }
  }
  void keyTyped() {
  if(key == 'a'){
  hspeed = -5;
  }
  if(key == 'd'){
  hspeed = +5;
  }
   if(key == 'w'){
  vspeed = -2;
  }
   if(key == 's'){
  vspeed = +2;
  }
   if(key == 'l'){
  vspeed = 0;
  }
   if(key == 'o'){
  hspeed = 0;
  }
  
  }
  void Display(){
  ellipse(x, y, size, size);
  }
}
