import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:ui' as ui;
import 'dart:typed_data';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import '../models/stroke.dart';

class BrushController extends GetxController {

  var brushSize = 5.0.obs;
  var brushColor = Colors.black.obs;
  var strokes = <Stroke>[].obs;
  var brushOpacity = 1.0.obs; // Opacity from 0.0 to 1.0


  void updateBrushSize(double size){
    brushSize.value = size;
    update();
  }

  void updateBrushColor(Color color){
    brushColor.value = color;
    update();
  }

  void newStroke(){
    strokes.add(Stroke([], brushSize.value, brushColor.value));
    update();
  }

  void updateOpacity(double opacity){
    brushOpacity.value = opacity;
    brushColor.value = Color.fromRGBO(
      brushColor.value.red,
      brushColor.value.green,
      brushColor.value.blue,
      opacity,
    );
    update();
  }


  void addToStroke(Offset point) {
    if (strokes.isNotEmpty) {
      strokes.value.last.points.add(point);
      strokes.refresh(); // Notify UI to update
    }
  }
  void clearCanvas(){
    strokes.value.clear();
    update();
  }

  Future<String?> captureAndSaveCanvas(GlobalKey canvasKey) async {
    try {
      RenderRepaintBoundary boundary =
      canvasKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      if (byteData != null) {
        final buffer = byteData.buffer.asUint8List();
        final tempDir = await getTemporaryDirectory();
        final file = await File('${tempDir.path}/drawing.png').writeAsBytes(buffer);
        return file.path;
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to capture image: $e');
    }
    return null;
  }

  Future<void> shareCanvas(GlobalKey canvasKey) async {
    final filePath = await captureAndSaveCanvas(canvasKey);
    if (filePath != null) {
      SharePlus.instance.share(
          ShareParams(
              text: "Come see what I made on Artify!",
              files: [XFile(filePath)],
              previewThumbnail: XFile(filePath)
          )
      );

    }
  }


}

