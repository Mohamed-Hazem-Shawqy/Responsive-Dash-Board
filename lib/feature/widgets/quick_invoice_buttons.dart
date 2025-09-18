import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';

class QuickInvoiceButtons extends StatelessWidget {
  const QuickInvoiceButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 62,
            child: TextButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text('Add more details', style: AppStyle.styleSemiBold18(context)),
            ),
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: SizedBox(
            height: 62,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff4EB7F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Send Money',
                style: AppStyle.styleSemiBold18(context).copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
