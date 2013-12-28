class Coordinater {
  Point[] pts;
  
  Coordinater(Point[] points) {
    pts = points;
  }
  
  void Left(int len) {
    Point c = pts[pts.length-1];
    
  }
  
  void Right(int len) {
    
  }
  
  void Up(int len) {
    
  }
  
  void Down(int len) {
    
  }
  
  Point TopLeft() {
    Point p = new Point(99999999999, 9999999999);
    for (int i = 0; i < pts.length; i++) {
      if (pts[i].x < p.x) {
        p.x = pts[i].x;
      }
      if (pts[i].y < p.x) {
        p.y = pts[i].y;
      }
    }
    return p;
  }
  
  Point BottomRight() {
    Point p = new Point(0, 0);
    for (int i = 0; i < pts.length; i++) {
      if (pts[i].x > p.x) {
        p.x = pts[i].x;
      }
      if (pts[i].y > p.y) {
        p.y = pts[i].y;
      }
    }
    return p;
  }
  
  Point[] Adjust(int margin) {
    Point top_left = TopLeft(pts);
    for (int i = 0; i < pts.length; i++) {
      pts[i].Add(top_left, margin);
    }
    return pts;
  }
}
