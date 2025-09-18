import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice', style: AppStyle.styleSemiBold20(context)),
        Icon(Icons.add, color: Color(0xff4EB7F2)),
      ],
    );
  }
}