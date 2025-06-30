import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  int _currentIndex = 0;
  int _currentGroceryTapIndex = 0;

  int get currentIndex => _currentIndex;
  int get currentGroceryTapIndex => _currentGroceryTapIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void setCurrentGrocertTapIndex(int index) {
    _currentGroceryTapIndex = index;
    notifyListeners();
  }
}
