/*****************************************
  "Don’t Tap the Glass" by Sarah Kalen
 A program design for an interactive wallpaper, 
 featuring a swimming fish that gets angry when
 the tank is clicked on.
 *****************************************/

//declare variables
PFont font;
PImage img;
PImage img2;

float x, y, w, h;
float fish_x, fish_y, fishWidth, fishHeight;
float fishLength=50.0;

float xdirection = 0.9;  // left right
float ydirection = 0.4;  // top bottom
//

void setup() {
  size(500, 500);
  //set starting coordinates
  x=(width/2);
  y=(height/2);    //
  //load gimp images 
  img = loadImage("angerSymbols2.png");
  img2 =loadImage("seaweed.png");//
}//setup ()

void draw() {
  save("sketch02skalen.jpg");
  background(#9DC7DE);

  //draw seaweed
  image(img2, 8, 160, 490, 420);

  x = x - xdirection ;
  y = y - ydirection ;

  //prevent fish from leaving canvas
  if (x < fishLength || x > width-fishLength*2) {
    xdirection *= -1;
  }

  if (y < 0+fishLength || y > height-fishLength) {
    ydirection *= -1;
  }//


  // mirror fish when swimming right
  if (xdirection < 0) {
    pushMatrix();
    translate(x+fishLength/2, y);
    scale(-1, 1);
    if (mousePressed) {
      drawFish(fish_x, fish_y, 40, 40);
    } else {
      drawFish(fish_x, fish_y, 30, 30);
    }
    popMatrix();
  } else {
    if (mousePressed) {
      drawFish(x, y, 40, 40);
    } else {
      drawFish(x, y, 30, 30);
    }
  }//

  //draw sticky note shadow
  fill(#868581, 110);
  noStroke();
  smooth(8);
  beginShape();
  vertex(320, 70);
  vertex(450, 70);
  vertex(450, 193);
  vertex(317, 194);
  endShape();//

  //draw sticky note
  fill(#F7F4D2);
  noStroke();
  smooth(8);
  beginShape();
  vertex(320, 70);
  vertex(450, 70);
  vertex(450, 190);
  vertex(325, 185);
  endShape();//

  //text "please don't tap on glass"
  fill(0, 180);
  font = loadFont("HanziPenSC-W5-20.vlw");
  textFont(font, 19.5);
  text("please don't \n tap on glass", 340, 120); //

  //draw tape
  fill(#D6D6D6, 130); 
  noStroke();
  smooth(8);
  beginShape();
  vertex(378, 50);
  vertex(400, 50);
  vertex(400, 95);
  vertex(378, 95);
  endShape();//


  //draw tap effect
  if (mousePressed) {
    image(img, mouseX-70, mouseY-40, 130, 110);
  }//
}//draw()

//create drawFish function
void drawFish(float x, float y, float fishWidth, float fishHeight) {
  float fish_x = x;
  float fish_y = y;//

  //draw fish body
  if (mousePressed) {
    fill(#FF534D);
  } else {
    fill(#F29456);
  }
  noStroke();
  smooth(8);
  ellipse(fish_x, fish_y, fishWidth, fishHeight);
  triangle(fish_x+fishWidth/3.5, fish_y, 
  fish_x+fishWidth*1, fish_y-fishHeight/2, fish_x+fishWidth*1, fish_y+fishHeight/2);
  triangle(fish_x-fishWidth/1.3, fish_y, fish_x-fishWidth/6, fish_y-fishHeight/2.1, 
  fish_x-fishWidth/3, fish_y+fishHeight/2.9);//

  //draw fish fins
  triangle(fish_x, fish_y-fishHeight/3, fish_x+fishWidth/2, fish_y-fishHeight/1.4, 
  fish_x+fishWidth/2.3, fish_y-fishHeight/5);
  triangle(fish_x, fish_y+fishHeight/2, fish_x+fishWidth/4, fish_y+fishHeight/1.4, 
  fish_x+fishWidth/2, fish_y-fishHeight/8);//

  //draw fish eyes
  fill(0, 190);
  smooth(8);
  ellipse(fish_x-fishWidth/3.5, fish_y-fishHeight/8, fishWidth/10, fishHeight/10);
  ellipse(fish_x-fishWidth/9.5, fish_y-fishHeight/8, fishWidth/10, fishHeight/10);//


  //draw fish bubbles
  fill(#E8FEFF);
  smooth(8);
  ellipse(fish_x-fishWidth/1.03, fish_y-fishHeight/10, fishWidth/8, fishHeight/8);
  ellipse(fish_x-fishWidth*1.09, fish_y-fishHeight/3.2, fishWidth/7, fishHeight/7);
  ellipse(fish_x-fishWidth*1.12, fish_y-fishHeight/1.7, fishWidth/6, fishHeight/6);//
} //

