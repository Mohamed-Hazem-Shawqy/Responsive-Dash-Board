import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/model/transaction_history_model.dart';
import 'package:responsive_dash_board/feature/widgets/transaction_history_list_shape.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});
  static final List<TransactionHistoryModel> item = [
    TransactionHistoryModel(
      type: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      price: '\$20,129',
      isWithDrawel: true,
    ),
    TransactionHistoryModel(
      type: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM ',
      price: '\$2,000',
      isWithDrawel: false,
    ),
    TransactionHistoryModel(
      type: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      price: '\$20,129',
      isWithDrawel: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemCount: item.length,
    //   itemBuilder: (context, index) => Card(
    //     elevation: 0,
    //     child: TransactionHistoryListShape(
    //       transactionHistoryModel: item[index],
    //     ),
    //   ),
    // );
    return Column(
      children: item
          .map(
            (e) => Card(
              elevation: 0,
              child: TransactionHistoryListShape(transactionHistoryModel: e),
            ),
          )
          .toList(),
    );
  }
}
