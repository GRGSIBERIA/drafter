class Drawer {
  Point[] pts;
  
  Drawer(Point[] points) {
    pts = points;
  }
  
  void Draw() {
    for (int i = 0; i < pts.length-1; i++) {
      line(pts[i].x, pts[i].y, pts[i+1].x, pts[i+1].y);
    }
  }
}
