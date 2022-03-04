Figura fig1;

void setup() {
  size(680,680);
  fig1 = new Figura(260,260,5,5,180,180,180); 
}

void draw() {
  background(180,180,180);
  fig1.move();
  fig1.display();
}

class Figura { 
  float xpos;
  float ypos;
  int xspeed;
  int yspeed;
  int a;
  int b;
  int c;
  

  Figura( float tmpx_pos, float tmpy_pos, int tmpx_speed, int tmpy_speed, int color1, int color2, int color3) { 
    xpos = tmpx_pos;
    ypos = tmpy_pos;
    xspeed = tmpx_speed;
    yspeed = tmpy_speed;
    a = color1;
    b = color2;
    c = color3;
  }

  void display() {
    rectMode(CENTER);
    rect(xpos,ypos,95,95);
    fill(34, 188, 36);
  }

  void move() {
   if ((keyPressed == true) && (key == 'd')){
     xpos = xpos + xspeed;
    if (xpos > width) {
    }
   }
 
   else if ((keyPressed == true) && (key == 's')){
     ypos = ypos + yspeed;
    if (ypos > height) {
    }
   }
   

    else if ((keyPressed == true) && (key == 'a')){
    xpos = xpos - xspeed;
    if (xpos < -width + width) {
      }
    }
    
    else if ((keyPressed == true) && (key == 'w')){
     ypos = ypos - yspeed;
    if (ypos < -height + height) {

      }
    }
    
      if (xpos > 649) { 
      xpos = 650;
      a = 242;
      b = 40;
      c = 100;
      background(a,b, c);      
    }
    
      if (ypos > 648) {
     ypos = 645;
     a = 139; 
     b = 71;
     c = 3;
     background(a, b, c);
    }
    
    if (xpos < 31) { 
      xpos = 27;
      a= 118;
      b = 40;
      c = 100;
     background(a, b, c);      
    }
    
    if (ypos < 27) { 
      ypos = 30;
      a = 241; 
      b = 227;
      c = 65;
     background(a, b, c);
    }

    background(a, b, c);
      
    }
}
