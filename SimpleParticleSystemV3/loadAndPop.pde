// This function returns PShape arrylst of all SVGs files present in a directopry.

//--------------------------------------------------------------------------------//
//--------------------------------- Method Start ---------------------------------//
//--------------------------------------------------------------------------------//

ArrayList<PShape> loadAndPop(String fldr) {
  ArrayList<PShape> files = new ArrayList<PShape>();
  String dir = "C:/Users/trist/version-control/GroupA3/SimpleParticleSystemV3/data/" + fldr;
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
    PShape shape = loadShape(dir + name);
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
