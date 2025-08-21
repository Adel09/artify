import 'package:artify/screens/about/about_screen.dart';
import 'package:artify/screens/canvas/canvas_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  List<Widget> pages = [
    CanvasScreen(),
    AboutScreen()
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: (index){
          setState(() {
            _index = index;
          });
        },
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  "assets/svg/brush.svg",
                //colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/brush.svg",
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
              ),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline, color: Colors.grey,),
              activeIcon: Icon(Icons.info_outline, color: Colors.black,),
              label: ""
          ),


        ],

      ),
    );
  }
}


