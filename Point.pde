class Point {
  int x, y;
  
  Point(int xx, int yy) {
    x = 0;
    y = 0;
  }
  
  Point(Point p) {
    x = p.x;
    y = p.y;
  }
  
  void Add(Point v, int mergin) {
    if (v.x < 0)
      x += -v.x;
    x += mergin;
      
    if (v.y < 0)
      y += -v.y;
    y += mergin;
  }
}
