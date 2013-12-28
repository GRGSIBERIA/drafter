class Coordinater {
  static Point TopLeft(Point[] pts) {
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
  
  static Point BottomRight(Point[] pts) {
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
}
