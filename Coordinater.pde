class Coordinater {
  Point[] pts;
  
  Coordinater() {
    pts = new Point[1];
    pts[0] = new Point(0, 0);
  }
  
  void L(int len) {
    Point c = new Point(pts[pts.length-1]);
    c.x -= len;
    append(pts, c);
  }
  
  void R(int len) {
    Point c = new Point(pts[pts.length-1]);
    c.x += len;
    append(pts, c);
  }
  
  void U(int len) {
    Point c = new Point(pts[pts.length-1]);
    c.y -= len;
    append(pts, c);
  }
  
  void D(int len) {
    Point c = new Point(pts[pts.length-1]);
    c.y += len;
    append(pts, c);
  }
  
  Point TopLeft() {
    Point p = new Point(width, height);
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
    Point top_left = TopLeft();
    for (int i = 0; i < pts.length; i++) {
      pts[i].Add(top_left, margin);
    }
    return pts;
  }
}
