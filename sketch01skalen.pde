/*****************************************
  This sketch is based on an illustration called "Dip" by scottish 
 illustrator David Galletly. Sketch first drawn on graph paper,
 then translated to a digital canvas. 
 *****************************************/

//setup
void setup() {
  size(500, 500);
  background(#85ADB9);
  noLoop();
}//setup()

//draw hand
void draw() {
  
  //draw below surface finger 
  smooth(8);
  noStroke();
  fill(#2084A2, 190);
  beginShape();
  curveVertex(200, 400);
  curveVertex(205, 399);
  curveVertex(207.5, 440);
  curveVertex(210, 460);
  curveVertex(211, 470);
  curveVertex(214, 475);
  curveVertex(222, 480);
  curveVertex(235, 475);
  curveVertex(240, 460);
  curveVertex(241, 398);
  curveVertex(241, 398);
  endShape(CLOSE);//

  //draw ripples (ellipse primitive used)
  noFill();
  stroke(255, 160);
  strokeWeight(1.4);
  ellipse(223, 401, 78, 18);
  ellipse(220, 402, 120, 27);
  ellipse(219, 404, 138, 39);
  ellipse(215, 406, 161, 55);
  ellipse(213, 408, 200, 65);//

  //draw wrist (rect, quad, triangle primitives used)
  smooth();
  noStroke();
  fill(#123938);
  rect(240, 40, 127, 40);
  quad(240, 0, 365, 0, 367, 40, 240, 40);
  quad(240, 40, 367, 40, 367, 79, 240, 80);
  triangle(366.5, 80, 240, 80, 369, 112);//

  //draw hand outline (beginShape/endShape and arc primitive used)
    //draw wrist to thumb
    beginShape();
    vertex(240, 80);
    vertex(240, 90);
    vertex(236, 100) ;
    vertex(220, 118);
    vertex(200, 140);
    curveVertex(180, 160);
    curveVertex(170, 170);
    curveVertex(163, 180);//
  
    //draw thumb outline
    curveVertex(140, 208);
    curveVertex(150, 196);
    curveVertex(148, 198);
    curveVertex(140, 203);
    curveVertex(129, 211);
    curveVertex(125, 217);
    curveVertex(123, 221);
    curveVertex(120, 225);
    curveVertex(112, 233);
    curveVertex(100, 241);
    curveVertex(84, 251);
    curveVertex(82, 259);
    curveVertex(100, 270);
    curveVertex(120, 270);
    curveVertex(130, 265);
    vertex(140, 260);
    vertex(160, 244);
    vertex(170, 235);
    vertex(180, 229);
    vertex(198, 220);//
  
    vertex(200, 230);
    vertex(203, 240);
    vertex(204, 249);
    vertex(205, 260);
    vertex(205, 265);
    vertex(206, 280);
    vertex(205, 300);
    vertex(205.5, 320);
  
    //draw pointer knuckle left side
    vertex(205, 340);
    vertex(201, 358);
    vertex(200.5, 366);
    vertex(204, 379);
    vertex(205, 399);//
    curveVertex(206, 400);
    curveVertex(211, 401);
    curveVertex(221, 403);
    curveVertex(232, 402);
    curveVertex(240.5, 400);
    vertex(241, 397.5);//
  
    // draw pointer knuckle right side
    vertex(242, 380);
    vertex(245, 367);
    vertex(244.5, 358);
    vertex(243, 340.5);//
  
    curveVertex(243.5, 326);
    curveVertex(243.5, 309);
    curveVertex(250.4, 300);
    curveVertex(253, 294);
  
    // draw knuckles 
  
      //draw knuckle 1 of 3
      curveVertex(260, 301);
      curveVertex(266, 306);
      curveVertex(278, 308.5);
      curveVertex(290.3, 306);
      curveVertex(300, 300);//
    
      //draw knuckle 2 of 3
      curveVertex(308, 310);
      curveVertex(320, 312);
      curveVertex(333, 309);
      curveVertex(340, 301);
      curveVertex(347, 291.5);//
    
      //draw knuckle 3 of 3
      curveVertex(357, 299); 
      curveVertex(360, 301);
      curveVertex(370, 299);
      curveVertex(377, 291);
      curveVertex(383, 281.3);
      curveVertex(387, 270);
      curveVertex(389, 260);//
      
    //
  
    //finish hand
    curveVertex(387, 246);
    curveVertex(388, 230);
    curveVertex(390, 220);
    curveVertex(389, 209);
    curveVertex(387.5, 200);
    curveVertex(385, 186);
    curveVertex(385.3, 160);
    curveVertex(383, 141);
    curveVertex(376, 127);//
  
    //draw right wrist bump
    curveVertex(369, 112);
    curveVertex(369, 80);
    curveVertex(372, 60);
    curveVertex(363, 20);
    curveVertex(355, 1);
    curveVertex(350, 0);//
    endShape(CLOSE);//
  
  //


  //draw nails

    //draw thumb nail
    stroke(#2186A4, 90);
    strokeWeight(.7);
    fill(255, 230);
    smooth(8);
    beginShape();
    vertex(82.5, 251); 
    vertex(100, 241);
    vertex(112, 233);
    curveVertex(112, 233);
    curveVertex(120, 240);
    curveVertex(120, 248.6);
    curveVertex(110, 256.7);
    curveVertex(100, 259);
    curveVertex(91, 258.5);
    vertex(91, 258.5); 
    endShape(CLOSE); //
  
    //draw pointer nail
    fill(255, 170);
    smooth(8);
    beginShape();
    curveVertex(220.5, 449);
    curveVertex(231, 451);
    curveVertex(235.4, 458.7);
    curveVertex(235.4, 458.7);
    curveVertex(235, 467);
    curveVertex(229, 474);
    curveVertex(220, 474);
    curveVertex(219.5, 473);
    curveVertex(218, 473);
    curveVertex(215.3, 466);
    curveVertex(214.5, 453.5);
    curveVertex(216, 449); 
    endShape(CLOSE);//
    
  //

  //draw wrinkles (line, arc, curve primitive used)

    //draw knuckle wrinkle 1 gradient effect
    noFill();
    smooth(8);
    stroke(255, 15);
    strokeWeight(1.3);
    curve(250, 206, 246.5, 206, 242, 227, 246, 227);
    noFill();
    smooth(8);
    stroke(255, 15);
    strokeWeight(1.25);
    curve(250, 206, 246.5, 206, 241, 239, 246, 239); //
  
    //draw knuckle wrinkles
    noFill();
    smooth(8);
    stroke(255, 40);
    strokeWeight(1.2);
    curve(250, 206, 246.5, 206, 240, 255, 244, 251); 
    curve(295, 230, 290, 230, 291, 250, 300, 250); 
    curve(319, 204, 325, 204, 333, 230, 327, 230); 
    curve(359, 199, 359, 199, 362, 219, 362, 219);// 
  
    //draw thumb to pointer finger wrinkles
    noFill();
    smooth(8);
    stroke(255, 64);
    strokeWeight(1.3);
    curve(203.5, 196.5, 192.5, 196.5, 198, 220, 198, 220);
    curve(193, 206.5, 187, 206.5, 198, 220, 198, 220);// 
  
    //draw thumb nail wrinkles
    curve(110, 225, 115.7, 231, 117, 233, 119, 236); 
    curve(118, 227, 118, 227, 122, 233, 122, 233);// 
  
    //draw thumb bump wrinkles
    curve(128, 210, 128, 212, 133, 219, 140, 218);
    curve(131, 210, 131, 209, 137, 217, 140, 218);
    line(139, 219, 142, 222);
    curve(134, 206, 134, 206, 139, 212, 144, 215); 
    line(141, 214, 143, 215);//
  
    //draw pointer finger wrinkles
    curve(215, 346, 216, 352, 227, 352, 229, 350);
    line(230, 352.5, 232, 352);
    curve(210, 350, 210, 358.7, 235, 358.7, 235, 350); 
    curve(209.5, 345, 210, 366.5, 235.4, 366.5, 236, 345);//
  
    //draw pointer knuckle wrinkles
    line(223.5, 287, 228, 287);
    line(219, 292, 238, 291.5);
    line(222, 297, 236, 296);//
  
    //draw knuckle 1 wrinkles
    curve(300, 300, 275, 304, 289, 302.5, 290, 290);
    curve(265, 300, 268, 302.7, 272, 303.999, 280, 304);//
  
    //draw knuckle 2 wrinkles
    curve(308, 286, 309, 305.8, 331, 305.8, 334, 286);
    curve(312, 298, 314, 304, 325, 304, 330, 298); //
  
    //draw knuckle 3 wrinkles
    curve(354, 254, 355, 294, 375, 288.5, 375, 245);//
  
    //draw above knuckle wrinkles
    stroke(255, 40);
    curve(270, 325, 290, 293, 308, 284, 319, 290);
    arc(355, 288, 30, 20, PI, TWO_PI-PI/2);//
  //

  //draw signature
  String s = "sarah kalen. cs110 fall 2016";
  fill(255, 120);
  text(s, 15, 15, 80, 90); //
  
  //
  
  save("sketch01skalen.jpg");
  }
 

