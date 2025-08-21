import 'package:flutter/material.dart';
// Class to store stroke data with points, size, and color
class Stroke {
  final List<Offset> points;
  final double brushSize;
  final Color brushColor;

  Stroke(this.points, this.brushSize, this.brushColor);
}