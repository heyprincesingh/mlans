import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homePageHelpers with ChangeNotifier {
  Widget bottomNavBar(int index, PageController pageController) {
    return CustomNavigationBar(
      elevation: 20,
      blurEffect: false,
      currentIndex: index,
      bubbleCurve: Curves.bounceIn,
      scaleCurve: Curves.decelerate,
      selectedColor: Colors.black,
      unSelectedColor: Colors.grey,
      strokeColor: Colors.indigo.shade400,
      scaleFactor: 0.5,
      iconSize: 25,
      onTap: (val) {
        index = val;
        pageController.jumpToPage(index);
        notifyListeners();
      },
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          title: Text("Home",style: TextStyle(fontSize: 11),),
            icon: Icon(EvaIcons.home)),
        CustomNavigationBarItem(
            title: Text("Family",style: TextStyle(fontSize: 11),),
            icon: Icon(FontAwesomeIcons.yinYang)),
        CustomNavigationBarItem(
            title: Text("Profile",style: TextStyle(fontSize: 11),),
            icon: Icon(EvaIcons.person)),
      ],
    );
  }
}
