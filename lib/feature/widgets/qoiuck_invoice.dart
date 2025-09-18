import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';
import 'package:responsive_dash_board/feature/widgets/last_transaction_list.dart';
import 'package:responsive_dash_board/feature/widgets/quick_invoice_buttons.dart';
import 'package:responsive_dash_board/feature/widgets/quick_invoice_four_text_form.dart';
import 'package:responsive_dash_board/feature/widgets/quick_invoice_header.dart';

class QouickInvoice extends StatelessWidget {
  const QouickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      padding: EdgeInsets.symmetric(horizontal: 24),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          const SizedBox(height: 24),
          Text('Latest Transaction', style: AppStyle.styleMedium16(context)),
          LastTransactionList(),
          Divider(
            endIndent: 24,
            indent: 24,
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceFourTextForm(),
          const SizedBox(height: 24),
          QuickInvoiceButtons(),
          const SizedBox(height: 49),
        ],
      ),
    );
  }
}
