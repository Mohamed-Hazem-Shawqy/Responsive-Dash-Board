import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/qouick_invoice_textfiled_item.dart';

class QuickInvoiceFourTextForm extends StatelessWidget {
  const QuickInvoiceFourTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Row(
          children: [
            Expanded(
              child: QouickInvoiceTextfiledItem(
                hint: 'Type customer name',
                title: 'Customer name',
              ),
            ),
            Expanded(
              child: QouickInvoiceTextfiledItem(
                hint: 'Type customer email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: QouickInvoiceTextfiledItem(
                hint: 'Type item name',
                title: 'Item name',
              ),
            ),
            Expanded(
              child: QouickInvoiceTextfiledItem(
                hint: 'USD',
                title: 'Item mount',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
