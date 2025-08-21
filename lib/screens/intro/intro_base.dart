import 'package:artify/components/buttons.dart';
import 'package:artify/components/spacer.dart';
import 'package:artify/components/styles.dart';
import 'package:artify/components/texts.dart';
import 'package:artify/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class IntroBase extends StatelessWidget {
  const IntroBase({super.key});

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
              Space.ten(),
              UIText.largeBold(text: "Artify"),
              Space.ten(),
              Image(
                  image: AssetImage("assets/images/onb-img.png"),
                width: Get.width,
                height: Get.height * 0.4,
                fit: BoxFit.cover,
              ),
              Space.generic(),
              UIText.xxxLarge(
                  text: "Unleash your \ncreativity",
                alignment: TextAlign.center,
                style: xxxLarge.copyWith(fontSize: 32),
              ),
              Space.ten(),
              UIText(
                  text: "Start creating your masterpiece with our \nintuitive drawing tools.",
                alignment: TextAlign.center,
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: GenericButton(
                  label: "Start Drawing",
                  onPressed: (){
                    Get.to(Dashboard());
                  },
                ),
              ),
              Space.vLoose()
            ],
          ),
        ),
      ),
    );
  }
}



