class Measurement{
  String wall;
  double totalPaintableArea;
  double wallWidth;
  double wallHeight;
  int windowQuantity;
  int doorQuantity;

  Measurement({
    required this.totalPaintableArea,
    required this.wall,
    required this.doorQuantity,
    required this.wallHeight,
    required this.wallWidth,
    required this.windowQuantity
  });
}