// This function returns PImage arrylst of all SVGs files present in a directopry.

//--------------------------------------------------------------------------------//
//--------------------------------- Method Start ---------------------------------//
//--------------------------------------------------------------------------------//

ArrayList<PImage> loadAndPop(String fldr) {
  ArrayList<PImage> files = new ArrayList<PImage>();
  //String dir = "C:/Users/trist/version-control/GroupA4/SimpleParticleSystemV3/data/" + fldr;
  String dir = "E:/version-control/GroupA3/SimpleParticleSystemV5/data/" + fldr;
  String names[];
  File file = new File(dir);

  // Make a string arry of all files names
  if (file.isDirectory()) {
    names = file.list();
  } else {
    // If it's not a directory
    return null;
  }

  // Loop thrgh ea filename, load ea SVG and put into arrylst
  for (String name : names) {
    PImage shape = loadImage(dir + name);
    files.add(shape);
  }

  return files;
}  // mthd enclsng brce

//--------------------------------------------------------------------------------//
//---------------------------------- Method End ----------------------------------//
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//----------------------------- Functionality Start ------------------------------//
//--------------------------------------------------------------------------------//
//--------------------------------------------------------------------------------//
//------------------------------ Functionality End -------------------------------//
//--------------------------------------------------------------------------------//
