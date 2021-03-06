import 'package:Moneylans/screens/onboard_screen/OnboardScreen.dart';
import 'package:Moneylans/screens/profile/ProfileHelpers.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/Authentication.dart';
import '../feed/Feed.dart';
import '../profile/Profile.dart';
import 'homePageHelpers.dart';

class HomePage extends StatefulWidget {
  String name;
  HomePage({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController homeController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: homeController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (page) {
          setState(() {
            pageIndex = page;
          });
        },
        children: [
          Feed(),
          OnboardScreen(),
          Profile(name: widget.name),
        ],
      ),
      bottomNavigationBar: Provider.of<homePageHelpers>(context, listen: false)
          .bottomNavBar(pageIndex, homeController),
    );
  }
}
