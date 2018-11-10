//import ddf.minim.*;

//AudioPlayer player;
//Minim minim;//audio context

Actor r = new Actor(300, 200);
Maze maze [] = new Maze [80];

void setup() {
  //minim = new Minim(this);
  //player = minim.loadFile("Impossible Maze SoundTrack (John).mp3", 2048);
  size(600,400);
  background(240,240,240);
  r.setColor(0,0,255);
  r.setPenColor(0, 0, 0);
  r.wid = 18;
  r.hei = 18;
  r.setDX(10);
  r.setDY(10);
  
  for (int i = 0; i < maze.length; i++)
     maze[i] = new Maze(); 
  } // end for
  

void draw() {
  //layer.play();
  background(240,240,240);
  fill(#FF0000);
  text("lives = " + r.lives, 8, 8);
  text("level: " + r.level, 490, 10);
  if (r.lives < 1) {
    textSize(60);
    text("game over", 200, 200);
  }
  for (int i = 0; i < maze.length; i++) {
    if (r.isTouching(maze[i])) {
      r.goTo(width/2, height/2);
      r.lives = r.lives - 1;
    }
  }
  
  r.drawEllipse();
  r.move();
  r.bounceEdge();
 
 for (int i = 0; i < maze.length; i++) {
    maze[i].act();
 }
 
 if (r.x < 0 || r.x > width || r.y < 0 || r.y > height) {
   r.goTo(width/2, height/2);
   r.level = r.level + 1;
  for (int i = 0; i < maze.length; i++)
     maze[i] = new Maze(); 
  } // end for
  
 }

//} //end draw 
