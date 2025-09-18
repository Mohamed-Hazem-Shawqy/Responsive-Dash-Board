import 'package:flutter/widgets.dart';

class SizeConfig {
  static const int tablet = 730;
  static const int desktop = 1200;

  static late double width, height;

  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
