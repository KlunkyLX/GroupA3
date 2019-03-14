// A simple Particle class introducing PShape for the actual particles

class Particle {

  //--------------------------------------------------------------------------------//
  //--------------------------- Instance Variables Start ---------------------------//
  //--------------------------------------------------------------------------------//
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  //--------------------------------------------------------------------------------//
  //---------------------------- Instance Variables End ----------------------------//
  //--------------------------------------------------------------------------------//

  //--------------------------------------------------------------------------------//
  //------------------------------ Constructor Start -------------------------------//
  //--------------------------------------------------------------------------------//

  Particle(PVector l) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    position = l.copy();
    lifespan = 255.0;
  }
  //--------------------------------------------------------------------------------//
  //------------------------------- Constructor End --------------------------------//
  //--------------------------------------------------------------------------------//

  //--------------------------------------------------------------------------------//
  //----------------------------- Functionality Start ------------------------------//
  //--------------------------------------------------------------------------------//
  //--------------------------------------------------------------------------------//

  // Method to
  //--------------------------------------------------------------------------------//
  void run() {
    update();
    display();
  }
  //--------------------------------------------------------------------------------//

  // Method to update position
  //--------------------------------------------------------------------------------//
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0;
  }
  //--------------------------------------------------------------------------------//

  // Method to display
  //--------------------------------------------------------------------------------//
  void display() {
    stroke(255, lifespan);
    fill(255, lifespan);
    ellipse(position.x, position.y, 8, 8);
  }
  //--------------------------------------------------------------------------------//

  // Is the particle still useful???
  //--------------------------------------------------------------------------------//
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
  //--------------------------------------------------------------------------------//

  //--------------------------------------------------------------------------------//
  //------------------------------ Functionality End -------------------------------//
  //--------------------------------------------------------------------------------//

  //--------------------------------------------------------------------------------//
  //-------------------------------- Getters Start ---------------------------------//
  //--------------------------------------------------------------------------------//
  //--------------------------------------------------------------------------------//
  //--------------------------------- Getters End ----------------------------------//
  //--------------------------------------------------------------------------------//

  //--------------------------------------------------------------------------------//
  //-------------------------------- Setters Start ---------------------------------//
  //--------------------------------------------------------------------------------//
  //--------------------------------------------------------------------------------//
  //--------------------------------- Setters End ----------------------------------//
  //--------------------------------------------------------------------------------//

  // Class enclsng crly brace
}
