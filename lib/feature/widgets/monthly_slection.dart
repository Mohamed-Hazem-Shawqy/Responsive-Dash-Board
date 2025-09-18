import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';

class MonthlySelection extends StatelessWidget {
  const MonthlySelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 18,
      children: [
        Text('Monthly', style: AppStyle.styleRegular16(context)),
    
        Transform.rotate(
          angle: -1.57079633,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xff064061),
          ),
        ),
      ],
    );
  }
}