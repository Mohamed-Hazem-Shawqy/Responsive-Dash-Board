import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/feature/model/expenses_model.dart';

class AllExpensesOptionHeader extends StatelessWidget {
  const AllExpensesOptionHeader({
    super.key,
    required this.expensesModel,
    required this.isHeaderSelect,
  });
  final ExpensesModel expensesModel;
  final bool isHeaderSelect;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          expensesModel.image,
          colorFilter: isHeaderSelect
              ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
              : null,
        ),
        Expanded(child: SizedBox()),

        Icon(
          Icons.arrow_forward_ios,
          color: isHeaderSelect ? Colors.white : Color(0xff064061),
        ),
      ],
    );
  }
}
