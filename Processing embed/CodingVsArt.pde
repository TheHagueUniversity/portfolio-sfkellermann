// declare variables
import ddf.minim.*;
Minim minim;
AudioPlayer player;
int[] yPosition = {322, 72, 280, 360, 433, 376, 109, 19, 61, 175, 108, 484, 164, 22, 7, 32, 47}; // array 1
int[] xPosition = {10, 40, 70, 100, 130, 160, 190, 220, 250, 280, 310, 340, 370, 400, 430, 460}; // array 2


void setup() {
  size(500, 500, P3D); // add a 3D plane
  noStroke();
  frameRate(5);

  // setup techno music to play on a loop
  minim = new Minim(this);
  player = minim.loadFile("friendzoned.mp3");
  player.loop();
}       

void draw() {
  // black background
  background(0); 

  // make the ellipses rotate in 3D
  for (int i = 0; i < yPosition.length-2; i++) {
    rotateX(mouseY * 0.05);  
    rotateY(mouseX * 0.05); 

    // execute the function that draws the colourful ellipses
    drawEllipses(i);

    // using the 'g' and 'G' keys to switch to greyscale
    if (keyPressed) {
      if (key == 'g'|| key == 'G') {
        greyScale(i);
      }
    }
  }
}

//setup colorful ellipses function
void drawEllipses(int i) {

  fill(3, 37, 76);  // darkest blue
  ellipse(xPosition[i+1], yPosition[i+1], xPosition[i], yPosition[i]);

  fill(14, 22, 170); //royal blue
  ellipse(xPosition[i], yPosition[i], xPosition[i+1], yPosition[i+1]);

  fill(250, 58, 215); // bright pink
  ellipse(xPosition[i+1], yPosition[i+1], xPosition[i], yPosition[i+1]);

  fill(23, 255, 117); // green
  ellipse(xPosition[i], yPosition[i], xPosition[i+1], yPosition[i]);

  fill(208, 239, 255); // light blue
  ellipse(xPosition[i+1], yPosition[i+1], xPosition[i+1], yPosition[i]);
}

//setup greyscale ellipses function
void greyScale(int i) {
  fill(255); // white
  ellipse(xPosition[i+1], yPosition[i+1], xPosition[i], yPosition[i]);

  fill(235); // light grey
  ellipse(xPosition[i], yPosition[i], xPosition[i+1], yPosition[i+1]);

  fill(170); // grey
  ellipse(xPosition[i+1], yPosition[i+1], xPosition[i], yPosition[i+1]);

  fill(90); // darker grey
  ellipse(xPosition[i], yPosition[i], xPosition[i+1], yPosition[i]);

  fill(30); // dark grey
  ellipse(xPosition[i+1], yPosition[i+1], xPosition[i+1], yPosition[i]);
}
