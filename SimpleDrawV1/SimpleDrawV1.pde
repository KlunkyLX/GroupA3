// Sketch to attempt to draw some particle systems 

// Tristan Skinner
// 14/03/2019

// Import libraries
//--------------------------------------------------------------------------------//
import spout.*;
//--------------------------------------------------------------------------------//

// Global variables
//--------------------------------------------------------------------------------//
Spout spout;
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//--------------------------------- Setup Start ----------------------------------//
//--------------------------------------------------------------------------------//

void setup() {
  //fullScreen(P2D);
  //fullScreen(P2D, 2);
  size(1920, 1080, P2D);
  //frameRate(30.0);
  smooth();
  background(255);
  noStroke();

  spout = new Spout(this);
  spout.createSender("1.yellow and 2.green");  // create a named sender
}  // setup enclsng brce

//--------------------------------------------------------------------------------//
//---------------------------------- Setup End -----------------------------------//
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//---------------------------------- Draw Start ----------------------------------//
//--------------------------------------------------------------------------------//

void draw() {
  /*background(255);
  fill(0);  // black
  ellipse(mouseX, mouseY, 5, 5);*/

  /*
  Enter = pulse
   1 = yellow
   2 = green
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

// Mthd to action animation on keypress
//--------------------------------------------------------------------------------//
void keyActions() {

  if (keyPressed) {
    if (key == '1') {
      if (mousePressed) {
        fill(260, 196, 0);
        ellipse(mouseX, mouseY, 40, 40);
      }
    } else if (key == '2') {
      if (mousePressed) {
        fill(128, 158, 73);
        ellipse(mouseX, mouseY, 60, 60);
      }
    }
  }
}  // mthd enclsng brce
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//--------------------------------------------------------------------------------//
//------------------------------ Functionality End -------------------------------//
//--------------------------------------------------------------------------------//
