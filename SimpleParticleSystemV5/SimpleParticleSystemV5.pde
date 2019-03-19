// Sketch to attempt to draw some particle systems 

// Tristan Skinner
// 14/03/2019

// Attributes
//--------------------------------------------------------------------------------//
// Daniel Schiffman
// https://processing.org/examples/simpleparticlesystem.html
//--------------------------------------------------------------------------------//

// Import libraries
//--------------------------------------------------------------------------------//
//--------------------------------------------------------------------------------//

// Global variables
//--------------------------------------------------------------------------------//
ParticleSystem psSprksLft;
ParticleSystem psSprksRght;
ParticleSystem psHearts;

Niccy niccy;
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//--------------------------------- Setup Start ----------------------------------//
//--------------------------------------------------------------------------------//

void setup() {
  //fullScreen(P2D);
  //fullScreen(P2D, 2);
  size(1920, 1200);
  frameRate(30.0);
  // Local variables
  //--------------------------------------------------------------------------------//
  //--------------------------------------------------------------------------------//

  // Particle systems
  ArrayList<PImage> sparks = loadAndPop("sparks/");  // sep tab
  ArrayList<PImage> hearts = loadAndPop("hearts/");  // sep tab
  // Params: 1: origin, 2: pshape PNGs
  psSprksLft = new ParticleSystem(new PVector(width/4, height/2), sparks, 0.0, 0.05);
  psSprksRght = new ParticleSystem(new PVector(width*0.75, height/2), sparks, 0.0, 0.05);
  psHearts = new ParticleSystem(new PVector(width/2, height/2), hearts, 0.001, 0.001);

  niccy = new Niccy();
}  // setup enclsng brce

//--------------------------------------------------------------------------------//
//---------------------------------- Setup End -----------------------------------//
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//---------------------------------- Draw Start ----------------------------------//
//--------------------------------------------------------------------------------//

void draw() {
  background(255);
  fill(0);  // black
  ellipse(mouseX, mouseY, 5, 5);

  /*
  Enter = pulse
   1 = left sparks
   2 = right sparks
   3 = both sparks
   4 = urinate
   5 = Nicole
   6 = jigger
   7 = vomit
   8 = pow
   9 = hearts
   */

  keyActions();
}  // draw enclsng brce

//--------------------------------------------------------------------------------//
//----------------------------------- Draw End -----------------------------------//
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//----------------------------- Functionality Start ------------------------------//
//--------------------------------------------------------------------------------//

// Mthd to draw rect that cover whole sketch
//--------------------------------------------------------------------------------//
void pulse() {
  fill(0);  // black
  rect(0, 0, width, height);
}  // mthd enclsng brce
//--------------------------------------------------------------------------------//

// Mthd to mouse draw lines
//--------------------------------------------------------------------------------//
void scrbble(color _c) {
  color c = _c;
  fill(c);
  ellipse(mouseX, mouseY, 25, 25);
}  // mthd enclsng brce
//--------------------------------------------------------------------------------//

// Mthd to draw three poww images
//--------------------------------------------------------------------------------//
void poww() {
}  // mthd enclsng brce
//--------------------------------------------------------------------------------//

// Mthd to action animation on keypress
//--------------------------------------------------------------------------------//
void keyActions() {

  if (keyPressed) {
    if (key == ENTER) {
      pulse();
    } else if (key == '1') {
      psSprksLft.addParticle();
      psSprksLft.run();
    } else if (key == '2') {
      psSprksRght.addParticle();
      psSprksRght.run();
    } else if (key == '3') {
      psSprksLft.addParticle();
      psSprksRght.addParticle();
      psSprksLft.run();
      psSprksRght.run();
    } else if (key == '4') {
      color yellow = color(100, 100, 0);
      scrbble(yellow);
    } else if (key == '5') {
      niccy.hiNic();
    } else if (key == '6') {
      niccy.byeNic();
    } else if (key == '7') {
      color green = color(0, 255, 0);
      scrbble(green);
    } else if (key == '8') {
      poww();
    } else if (key == '9') {
      psHearts.addParticle();
      psHearts.run();
    }
  }
}  // mthd enclsng brce
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//--------------------------------------------------------------------------------//
//------------------------------ Functionality End -------------------------------//
//--------------------------------------------------------------------------------//
