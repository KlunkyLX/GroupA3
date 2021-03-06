// A class to describe a group of Particles
// An ArrayList is used to manage the list of Particles 

class ParticleSystem {

  //--------------------------------------------------------------------------------//
  //--------------------------- Instance Variables Start ---------------------------//
  //--------------------------------------------------------------------------------//
  ArrayList<Particle> particles;
  PVector origin;
  //--------------------------------------------------------------------------------//
  //---------------------------- Instance Variables End ----------------------------//
  //--------------------------------------------------------------------------------//

  //--------------------------------------------------------------------------------//
  //------------------------------ Constructor Start -------------------------------//
  //--------------------------------------------------------------------------------//

  ParticleSystem(PVector position) {
    origin = position.copy();
    particles = new ArrayList<Particle>();
  }
  //--------------------------------------------------------------------------------//
  //------------------------------- Constructor End --------------------------------//
  //--------------------------------------------------------------------------------//

  //--------------------------------------------------------------------------------//
  //----------------------------- Functionality Start ------------------------------//
  //--------------------------------------------------------------------------------//

  // Method to ...
  //--------------------------------------------------------------------------------//
  void addParticle() {
    particles.add(new Particle(origin));
  }
  //--------------------------------------------------------------------------------//

  // Method to ...
  //--------------------------------------------------------------------------------//
  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
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
