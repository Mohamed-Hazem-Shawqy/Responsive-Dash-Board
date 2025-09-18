import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';
import 'package:responsive_dash_board/feature/model/in_come_model.dart';

class IncomeItemsDetailsShape extends StatelessWidget {
  const IncomeItemsDetailsShape({super.key, required this.inComeModel});

  final InComeModel inComeModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(inComeModel.text, style: AppStyle.styleRegular16(context)),
      ),

      trailing: Text(
        inComeModel.precentage,
        style: AppStyle.styleMedium16(context),
      ),
      leading: CircleAvatar(radius: 6, backgroundColor: inComeModel.color),
    );
  }
}
