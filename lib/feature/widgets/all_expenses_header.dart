import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';
import 'package:responsive_dash_board/feature/widgets/monthly_slection.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppStyle.styleSemiBold20(context)),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color(0xffF1F1F1), width: 1),
          ),
    
          child: MonthlySelection(),
        ),
      ],
    );
  }
}