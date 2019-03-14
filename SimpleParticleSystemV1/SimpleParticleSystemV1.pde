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
ParticleSystem ps;
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//--------------------------------- Setup Start ----------------------------------//
//--------------------------------------------------------------------------------//

void setup() {
  size(640, 360);
  ps = new ParticleSystem(new PVector(width/2, height/2));  // ps position
  // Local variables
  //--------------------------------------------------------------------------------//
  //--------------------------------------------------------------------------------//
}  // setup enclsng brce

//--------------------------------------------------------------------------------//
//---------------------------------- Setup End -----------------------------------//
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//---------------------------------- Draw Start ----------------------------------//
//--------------------------------------------------------------------------------//

void draw() {
  background(0);
  ps.addParticle();
  ps.run();
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
