import 'package:artify/components/spacer.dart';
import 'package:artify/components/texts.dart';
import 'package:artify/controllers/brush_controller.dart';
import 'package:artify/screens/canvas/palette_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../components/drawing_canvas.dart';



class CanvasScreen extends StatefulWidget {
  const CanvasScreen({super.key});

  @override
  State<CanvasScreen> createState() => _CanvasScreenState();
}

class _CanvasScreenState extends State<CanvasScreen> {

  BrushController controller = Get.find();
  final GlobalKey canvasKey = GlobalKey(); // Key for capturing canvas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      controller.shareCanvas(canvasKey);
                    },
                      child: Icon(Icons.share, color: Colors.black,)),
                  SizedBox(width: 20,)
                ],
              ),
              Expanded(
                  child: GestureDetector(
                    onPanStart: (details){
                      controller.newStroke();
                      controller.addToStroke(details.localPosition);
                      setState(() {});
                    },
                    onPanUpdate: (details) {
                      controller.addToStroke(details.localPosition);
                      setState(() {});
                    },
                    child: Obx(
                      () => RepaintBoundary(
                        key: canvasKey,
                        child: CustomPaint(
                          painter: DrawingCanvas(
                            controller.strokes.value,
                          ),
                          size: Size.infinite,
                        ),
                      ),
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [

                    InkWell(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                              "assets/svg/palette.svg"
                          ),
                          SizedBox(width: 12,),
                          Obx(
                            () => CircleAvatar(
                              radius: 4,
                              backgroundColor: controller.brushColor.value,
                            ),
                          )
                        ],
                      ),
                      onTap: (){
                        Get.bottomSheet(PaletteBottomsheet(), isScrollControlled: true);
                      },
                    ),
                    Expanded(child: SizedBox()),
                    InkWell(
                      onTap: (){
                        controller.clearCanvas();
                        setState(() { });
                      },
                        child: Icon(Icons.cleaning_services_rounded, size: 20,))
                  ],
                ),
              ),
              Space.normal(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UIText(text: "Brush Size", color: Colors.black,),
                    Obx(() => UIText(text: controller.brushSize.value.round().toString(), color: Colors.black,)),
                  ],
                ),
              ),
              Space.ten(),
              Obx(
                () => Slider(
                    value: controller.brushSize.value,
                    max: 50,
                    onChanged: (val) {
                      controller.updateBrushSize(val);
                    },
                  inactiveColor: Colors.grey,
                  activeColor: controller.brushColor.value,
                ),
              ),
              Space.ten()

            ],
          ),
        ),
      ),
    );
  }
}

