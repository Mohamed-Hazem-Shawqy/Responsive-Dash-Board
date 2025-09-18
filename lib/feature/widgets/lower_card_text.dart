import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';

class LowerCardText extends StatelessWidget {
  const LowerCardText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '0918 8124 0042 8129',
              style: AppStyle.styleSemiBold24(context).copyWith(color: Colors.white),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '12/20 - 124',
              style: AppStyle.styleRegular16(context).copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
