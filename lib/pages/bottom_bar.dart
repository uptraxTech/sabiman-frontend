import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:urban_home_provider/constant/constant.dart';
import 'package:urban_home_provider/pages/screens.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  DateTime currentBackPressTime;
  int currentIndex = 1;

  changeIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        elevation: 1.0,
        child: Container(
          width: double.infinity,
          color: whiteColor,
          padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              bottomBarItem(Icons.date_range, 1),
              bottomBarItem(Icons.chat, 2),
              bottomBarItem(Icons.thumbs_up_down, 3),
              bottomBarItem(Icons.person, 4),
            ],
          ),
        ),
      ),
      body: WillPopScope(
        child: (currentIndex == 1)
            ? MyBookings()
            : (currentIndex == 2)
                ? ChatList()
                : (currentIndex == 3)
                    ? Reviews()
                    : Profile(),
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            exit(0);
          }
          return false;
        },
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      // Fluttertoast.showToast(
      //   msg: 'Press Back Once Again to Exit.',
      //   backgroundColor: Colors.black,
      //   textColor: whiteColor,
      // );
      return false;
    } else {
      return true;
    }
  }

  bottomBarItem(icon, index) {
    return IconButton(
      icon: Icon(
        icon,
        size: 24.0,
        color: (index == currentIndex) ? primaryColor : greyColor,
      ),
      onPressed: () => changeIndex(index),
    );
  }
}
