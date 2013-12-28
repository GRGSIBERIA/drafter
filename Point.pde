class Point {
  int x, y;
  
  Point(int xx, int yy) {
    x = 0;
    y = 0;
  }
  
  void Add(Point v, int margin) {
    x += v.x + margin;
    y += v.y + margin;
  }
}
