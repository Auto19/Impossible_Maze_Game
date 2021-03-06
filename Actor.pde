class Actor {
  float x;
  float y;
  int fillRed = 0;
  int fillGreen = 0;
  int fillBlue = 0;
  int penRed = 0;
  int penGre=   n = 0;
  int penBlue = 0;
  int siz  e = 50;
  int wid = 50;
  int hei = 50;
  int dx = 0;
  int dy = 0;
  int lives = 10;
  int level = 1;
  
  
  public Actor(float xPos, float yPos) {
    x = xPos;
    y = yPos;
  }
  public Actor() {
  }
  
  void setColor(int r, int g, int b) {
    fillRed = r;
    fillGreen = g;
    fillBlue = b;
  }
  
  void setPenColor(int r, int g, int b) {
    penRed = r;
    penGreen = g;
    penBlue = b;
  }
  
  void move() {
    if (keyCode == TAB) {
        r.lives = 10;
        r.level = 0;
        textSize(12);
     }
    if (key == CODED) {
     if (keyCode == UP) {
      y = y - 4;
      x = x;
     } 
     if (keyCode == SHIFT) {
       r.lives = r.lives + 100;
     }
     if (keyCode == DOWN) {
      y = y + 4;
      x = x;
    } 
     if (keyCode == LEFT) {
       y = y;
       x = x - 4;
     }
     if (keyCode == RIGHT) {
       y = y;
       x = x + 4;
     }
    }
  }
  
   
  void bounceEdge() {
    if (x > width || y < 0) {
      dx = dx * -1;
    }
    if (y > height || y < 0) {
      dy = dy * -1;
    }
  }
  
  void setDX(int xVel) {
    dx = xVel;
  }
  
  void setDY(int yVel) {
    dy = yVel;
  }
  
  void drawRect() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    rect(x, y, wid, hei);
  }
  
  void drawEllipse() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    ellipse(x, y, wid, hei);
  }
  
  void drawTriangle() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    triangle(x, y, x, y, x, y);    
  }
  
  boolean isTouching(Actor a) {
    boolean xTouch = (x + wid/2 > a.x & x - wid/2 < a.x + a.wid);
    boolean yTouch = (y + hei/2 > a.y & y - hei/2 < a.y + a.hei);
    return (xTouch & yTouch);
  }
  
} //actor end here (maybe)
