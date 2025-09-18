import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';
import 'package:responsive_dash_board/core/utils/images_generate.dart';

class UpperCardText extends StatelessWidget {
  const UpperCardText({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.topLeft,
        child: Text(
          'Name card',
          style: AppStyle.styleMedium16(context).copyWith(color: Colors.white),
        ),
      ),
      subtitle: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.topLeft,
        child: Text('Syah Bandi', style: AppStyle.styleMeduim20(context)),
      ),
      trailing: SvgPicture.asset(Assets.imagesCardimage),
    );
  }
}

