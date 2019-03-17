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
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//--------------------------------- Setup Start ----------------------------------//
//--------------------------------------------------------------------------------//

void setup() {
  size(1000, 800);
  //frameRate(30.0);
  // Local variables
  //--------------------------------------------------------------------------------//
  //--------------------------------------------------------------------------------//

  ArrayList<PShape> sparks = loadAndPop("sparks/");  // sep tab
  ArrayList<PShape> hearts = loadAndPop("hearts/");  // sep tab
  // Params: 1: origin, 2: pshape SVGs
  //psSprksLft = new ParticleSystem(new PVector(width/4, height/2), sparks);
  //psSprksRght = new ParticleSystem(new PVector(width*0.75, height/2), sparks);
  psHearts = new ParticleSystem(new PVector(width/2, height/2), hearts);
}  // setup enclsng brce

//--------------------------------------------------------------------------------//
//---------------------------------- Setup End -----------------------------------//
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//---------------------------------- Draw Start ----------------------------------//
//--------------------------------------------------------------------------------//

void draw() {
  background(255);
  /*psSprksLft.addParticle();
  psSprksLft.run();
  psSprksRght.addParticle();
  psSprksRght.run();*/
  psHearts.addParticle();
  psHearts.run();
}  // draw enclsng brce

//--------------------------------------------------------------------------------//
//----------------------------------- Draw End -----------------------------------//
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//----------------------------- Functionality Start ------------------------------//
//--------------------------------------------------------------------------------//
//--------------------------------------------------------------------------------//
//------------------------------ Functionality End -------------------------------//
//--------------------------------------------------------------------------------//