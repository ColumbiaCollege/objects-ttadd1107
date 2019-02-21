Circle thecircle;
int x = 0;
int y = 0;
int size = 60;
void setup(){
size(1000,800);
background(0);
thecircle = new Circle( x, y , size );

}
void draw(){

//circle.move();

}

class Circle{


Circle(int tempX, int tempY , int tempSZ ){

x = tempX;
y = tempY;   
}
}

void move(){
x++;
y++;
}
