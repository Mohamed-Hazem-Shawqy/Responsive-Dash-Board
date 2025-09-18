import 'package:flutter/material.dart';

class ActiveAndInactiveItemDrawer with ChangeNotifier {
  int activeIndex = 0;

  void isActive(int index) {
    activeIndex = index;
    notifyListeners();
  }

  void triggerBounce(AnimationController animationController) {
    animationController.forward().then((_) {
      animationController.reverse();
    });
  }
}

class ActiveAndInactiveExpensesOption with ChangeNotifier {
  int activeIndex = 0;

  void isActive(int index) {
    activeIndex = index;
    notifyListeners();
  }}

