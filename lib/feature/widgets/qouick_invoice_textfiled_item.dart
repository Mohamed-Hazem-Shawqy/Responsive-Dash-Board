import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';
import 'package:responsive_dash_board/feature/widgets/custom_text_filed.dart';

class QouickInvoiceTextfiledItem extends StatelessWidget {
  const QouickInvoiceTextfiledItem({
    super.key,
    required this.hint,
    required this.title,
  });
  final String hint, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyle.styleMedium16(context)),
        const SizedBox(height: 12),
        CustomTextFiled(hint: hint),
      ],
    );
  }
}
