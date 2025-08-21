import 'package:artify/components/buttons.dart';
import 'package:artify/components/spacer.dart';
import 'package:artify/components/styles.dart';
import 'package:artify/components/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              UIText.xxLarge(text: "About"),
              Space.generic(),
              Image(
                  image: AssetImage("assets/icons/icon.png"),
                width: 150,
                height: 150,
              ),
              Space.generic(),
              UIText(text: "Artify", color: Colors.black, style: xxxLarge,),
              Space.ten(),
              UIText(
                  text: "Artify is a basic Flutter app that allows users to draw on a canvas and preview brush settings.",
                alignment: TextAlign.center,
              ),
              Space.vWide(),
              Row(
                children: [
                  UIText.bold(text: "Developed By: "),
                  UIText(text: "Adel David-Nehikhare"),
                ],
              ),
              Space.vLoose(),
              Row(
                children: [
                  UIText.bold(text: "State Management Used: "),
                  UIText(text: "GetX"),
                ],
              ),
              Space.vWide(),
              GenericButton(
                label: "Share Artify with Friends",
                icon: Icon(Icons.share, size: 20, color: Colors.white,),
              )
            ],
          ),
        ),
      ),
    );
  }
}


