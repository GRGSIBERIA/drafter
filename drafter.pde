int cm_unit = 5;    // An unit is N cm.
int object_width  = 5000;
int object_height = 5000;
int width  = object_width  / cm_unit;
int height = object_height / cm_unit;



void setup() {
  size(width, height);
  background(255);
  saveFrame("test.png");
}