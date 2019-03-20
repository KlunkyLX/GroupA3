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
import spout.*;
//--------------------------------------------------------------------------------//

// Global variables
//--------------------------------------------------------------------------------//
Spout spout;

ParticleSystem psSprksLft;
ParticleSystem psSprksRght;
ParticleSystem psHearts;

Niccy niccy;
PImage poww1;
PImage poww2;
PImage poww3;
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//--------------------------------- Setup Start ----------------------------------//
//--------------------------------------------------------------------------------//

void setup() {
  //fullScreen(P2D);
  //fullScreen(P2D, 2);
  size(1920, 1080, P2D);
  //frameRate(30.0);

  spout = new Spout(this);
  spout.createSender("1 to 9.main");  // create a named sender

  // Particle systems
  ArrayList<PImage> sparks = loadAndPop("sparks/");  // sep tab
  ArrayList<PImage> hearts = loadAndPop("hearts/");  // sep tab
  // Params: 1: origin, 2: pshape PNGs
  psSprksLft = new ParticleSystem(new PVector(width/4, height/2), sparks, 0.0, 0.05);
  psSprksRght = new ParticleSystem(new PVector(width*0.75, height/2), sparks, 0.0, 0.05);
  psHearts = new ParticleSystem(new PVector(width/2, height/2), hearts, 0.001, 0.001);

  niccy = new Niccy();
  poww1 = loadImage("poww1.png");
  poww2 = loadImage("poww2.png");
  poww3 = loadImage("poww3.png");
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
   4 = Nicole
   5 = jigger
   6 = pow1
   7 = pow2
   8 = pow3
   9 = hearts
   */

  keyActions();
  spout.sendTexture();
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
      niccy.hiNic();
    } else if (key == '5') {
      niccy.byeNic();
    } else if (key == '6') {
      image(poww1, width/3, height/3.2);
    } else if (key == '7') {
      image(poww2, width/4, height/5);
      image(poww1, width/3, height/3.2);
    } else if (key == '8') {
      poww3.resize(1000, 0);
      image(poww3, 350, 0);
      image(poww2, width/4, height/5);
      image(poww1, width/3, height/3.2);
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
