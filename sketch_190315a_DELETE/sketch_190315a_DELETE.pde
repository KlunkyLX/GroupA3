void setup() { //<>//
  size(640, 640);
  smooth();
}

void draw() {
  PShape bot = loadShape("bot1.svg");
  //PShape spark = loadShape("Untitled-1.svg");
  PShape spark = loadShape("Untitled-3.svg");
  spark.setFill(255);
  shape(bot, 300, 300);
  shape(spark, -100, -100);
}
