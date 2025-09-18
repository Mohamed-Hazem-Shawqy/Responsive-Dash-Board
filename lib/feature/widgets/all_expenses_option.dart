import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dash_board/core/utils/images_generate.dart';
import 'package:responsive_dash_board/feature/manager/provider.dart';
import 'package:responsive_dash_board/feature/model/expenses_model.dart';
import 'package:responsive_dash_board/feature/widgets/all_expenses_container_option_item.dart';

class AllExpensesOptions extends StatelessWidget {
  const AllExpensesOptions({super.key});

  static List<ExpensesModel> items = [
    ExpensesModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129',
    ),
    ExpensesModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129',
    ),
    ExpensesModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ActiveAndInactiveExpensesOption(),
      builder: (context, child) => Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                context.read<ActiveAndInactiveExpensesOption>().isActive(0);
              },
              child: Selector<ActiveAndInactiveExpensesOption, bool>(
                selector: (context, value) => value.activeIndex == 0,
                builder: (context, isActive, child) =>
                    AllExpensesContainerOptionItem(
                      expensesModel: items[0],
                      isSelected: isActive,
                    ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: GestureDetector(
              onTap: () {
                context.read<ActiveAndInactiveExpensesOption>().isActive(1);
              },
              child: Selector<ActiveAndInactiveExpensesOption, bool>(
                selector: (context, value) => value.activeIndex == 1,
                builder: (context, isActive, child) =>
                    AllExpensesContainerOptionItem(
                      expensesModel: items[1],
                      isSelected: isActive,
                    ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: GestureDetector(
              onTap: () {
                context.read<ActiveAndInactiveExpensesOption>().isActive(2);
              },
              child: Selector<ActiveAndInactiveExpensesOption, bool>(
                selector: (context, value) => value.activeIndex == 2,
                builder: (context, isActive, child) =>
                    AllExpensesContainerOptionItem(
                      expensesModel: items[2],
                      isSelected: isActive,
                    ),
              ),
            ),
          ),
        ],

        // items.map((e) => Expanded(child: AllExpensesContainerOptionItem(expensesModel: e),), ).toList(),
        ///////////////////////////////////////////////////////////
        // children: items.asMap().entries.map((e) {
        //   int index = e.key;
        //   var item = e.value;
        //   return Expanded(
        //     child: GestureDetector(
        //       onTap: () {
        //         context.read<ActiveAndInactiveExpensesOption>().isActive(index);
        //       },
        //       child: Selector<ActiveAndInactiveExpensesOption, bool>(
        //         selector: (context, value) => value.activeIndex == index,
        //         builder: (context, isActive, child) =>
        //             AllExpensesContainerOptionItem(
        //               expensesModel: item,
        //               isSelected: isActive,
        //             ),
        //       ),
        //     ),
        //   );
        // }).toList(),
      ),
    );
  }
}
