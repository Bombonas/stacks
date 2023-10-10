import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppData with ChangeNotifier {
  // App status
  bool isSidebarLeftVisible = false;
  bool isSidebarRightVisible = false;
  Color colorText = CupertinoColors.black;

  // Toggle sidebar left
  void toggleSidebarLeft() {
    isSidebarLeftVisible = !isSidebarLeftVisible;
    notifyListeners();
  }

  void toggleSidebarRight() {
    isSidebarRightVisible = !isSidebarRightVisible;
    notifyListeners();
  }

  void changeColor(color) {
    switch(color){
      case 0:
        colorText = CupertinoColors.black;
        break;
      case 1:
        colorText = Colors.red;
        break;  
      case 2:
        colorText = Colors.green;
        break;
      case 3:
        colorText = Colors.blue;
        break;
    }
    notifyListeners();
  }
}
