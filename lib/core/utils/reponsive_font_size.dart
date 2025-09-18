import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';

double respoinsiveFontSize({required BuildContext context, required int fontsize}) {
  double scaleFactor = scaleFactorFunc(context);
  double responsiveFont = scaleFactor * fontsize;
  double lowerLimit = fontsize * .8;
  double upperLimit = fontsize * 1.2;
  return responsiveFont.clamp(lowerLimit, upperLimit);
}

double scaleFactorFunc(BuildContext context) {
  // var disPatch = PlatformDispatcher.instance;
  // var physicalSize = disPatch.views.first.physicalSize.width;
  // var devicePixelRatio = disPatch.views.first.devicePixelRatio;
  // var width = physicalSize / devicePixelRatio;
  var width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 500;
  } else if (width < SizeConfig.desktop) {
    return width / 900;
  } else {
    return width / 1700;
  }
}
