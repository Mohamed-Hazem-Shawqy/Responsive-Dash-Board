import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';
import 'package:responsive_dash_board/feature/model/expenses_model.dart';
import 'package:responsive_dash_board/feature/widgets/all_expenses_option_header.dart';

class AllExpensesContainerOptionItem extends StatelessWidget {
  const AllExpensesContainerOptionItem({
    super.key,
    required this.expensesModel,
    required this.isSelected,
  });
  final ExpensesModel expensesModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff4EB7F2) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffF1F1F1), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesOptionHeader(
            expensesModel: expensesModel,
            isHeaderSelect: isSelected,
          ),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensesModel.title,
              style: isSelected
                  ? AppStyle.styleSemiBold16(
                      context,
                    ).copyWith(color: Colors.white)
                  : AppStyle.styleSemiBold16(context),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensesModel.date,
              style: isSelected
                  ? AppStyle.styleRegular14(
                      context,
                    ).copyWith(color: Colors.white)
                  : AppStyle.styleRegular14(context),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensesModel.price,
              style: isSelected
                  ? AppStyle.styleSemiBold24(
                      context,
                    ).copyWith(color: Colors.white)
                  : AppStyle.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
