import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';
import 'package:responsive_dash_board/feature/model/transaction_history_model.dart';

class TransactionHistoryListShape extends StatelessWidget {
  const TransactionHistoryListShape({
    super.key,
    required this.transactionHistoryModel,
  });

  final TransactionHistoryModel transactionHistoryModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(7),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          transactionHistoryModel.type,
          style: AppStyle.styleSemiBold20(context),
        ),
      ),
      subtitle: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          transactionHistoryModel.date,
          style: AppStyle.styleRegular16(context).copyWith(color: Color(0xffAAAAAA)),
        ),
      ),

      trailing: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          transactionHistoryModel.price,
          style: AppStyle.styleSemiBold20(context).copyWith(
            color: transactionHistoryModel.isWithDrawel
                ? Color(0xffF3735E)
                : Colors.green,
          ),
        ),
      ),
    );
  }
}