import 'package:artify/components/bottom_sheet.dart';
import 'package:artify/components/color_item.dart';
import 'package:artify/components/spacer.dart';
import 'package:artify/components/texts.dart';
import 'package:artify/controllers/brush_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PaletteBottomsheet extends StatefulWidget {
  const PaletteBottomsheet({super.key});

  @override
  State<PaletteBottomsheet> createState() => _PaletteBottomsheetState();
}

class _PaletteBottomsheetState extends State<PaletteBottomsheet> {

  BrushController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return UiBottomSheet(
      height: Get.height * 0.35,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIText.xLarge(text: "Color", color: Colors.black,),
            Space.ten(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColorItem(
                  color: Colors.red,
                ),
                ColorItem(
                  color: Colors.green,
                ),
                ColorItem(
                  color: Colors.blue,
                ),
                ColorItem(
                  color: Colors.yellow,
                ),
                ColorItem(
                  color: Colors.purple,
                ),
                ColorItem(
                  color: Colors.blueGrey,
                ),
              ],
            ),
            Space.ten(),
            Row(
              children: [
                ColorItem(
                  color: Colors.lightGreenAccent,
                ),
                ColorItem(
                  color: Colors.black,
                ),

              ],
            ),
            Space.vRelaxed(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UIText(text: "Opacity", color: Colors.black,),
                Obx(() => UIText(
                  text: (controller.brushOpacity.value * 100).round().toString(),
                  color: Colors.black,)),
              ],
            ),
            Space.v8(),
            Obx(
                  () => Slider(
                value: controller.brushOpacity.value,
                max: 1,
                onChanged: (val) {
                  controller.updateOpacity(val);
                },
                divisions: 10,
                inactiveColor: Colors.grey,
                activeColor: Colors.black,
              ),
            ),
          ],
        ),
    );
  }
}

