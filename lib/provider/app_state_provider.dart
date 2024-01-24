import 'package:flutter/material.dart';

class AppStateProvider extends ChangeNotifier {
  int bottomSelectedTab = 0;
  bool isWebDrawerOpen = true;
  int selectedDrawerItem = 0;

  AppStateProvider();

  // void changeSelectedTab(int value) {
  //   bottomSelectedTab = value;
  //   notifyListeners();
  // }
  //
  // void changeSelectedDrawerItem(int value) {
  //   selectedDrawerItem = value;
  //   notifyListeners();
  // }

  void changeIsWebDrawerOpen({bool? value}) {
    isWebDrawerOpen = value ?? !isWebDrawerOpen;
    notifyListeners();
  }
  //
  // void selectHome() {
  //   bottomSelectedTab = 0;
  //   selectedDrawerItem = 0;
  //   notifyListeners();
  // }
  //
  // void selectTrackApplication() {
  //   bottomSelectedTab = 2;
  //   notifyListeners();
  // }
}
