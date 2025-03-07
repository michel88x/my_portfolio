import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{
  int selectedTab = 0;

  changeTab(int value){
    selectedTab = value;
    notifyListeners();
  }
}