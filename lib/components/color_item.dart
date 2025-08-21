import 'package:artify/controllers/brush_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    BrushController controller = Get.find();
    return GestureDetector(
      onTap: (){
        controller.updateBrushColor(color);
      },
      child: Obx(
        () => Container(
          height: 44,
          width: 44,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: controller.brushColor.value == color ?
            Border.all(color: Colors.grey, width: 1.5) : null
          ),
          child: Center(
            child: CircleAvatar(
              radius: 19,
              backgroundColor: color,
            ),
          ),
        ),
      ),
    );
  }
}

