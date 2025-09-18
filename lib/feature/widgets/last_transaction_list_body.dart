import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';
import 'package:responsive_dash_board/feature/model/last_transaction_model.dart';

class LastTransactionListBody extends StatelessWidget {
  const LastTransactionListBody({
    super.key,
    required this.lastTransactionModel,
  });
  final LastTransactionModel lastTransactionModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Card(
        elevation: 0,

        child: Center(
          child: ListTile(
            title: Text(
              lastTransactionModel.name,
              style: AppStyle.styleSemiBold16(context),
            ),
            subtitle: Text(
              lastTransactionModel.email,
              style: AppStyle.styleRegular12(context),
            ),
            leading: SvgPicture.asset(lastTransactionModel.image),
          ),
        ),
      ),
    );
  }
}
