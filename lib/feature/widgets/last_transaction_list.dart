import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/images_generate.dart';
import 'package:responsive_dash_board/feature/model/last_transaction_model.dart';
import 'package:responsive_dash_board/feature/widgets/last_transaction_list_body.dart';

class LastTransactionList extends StatelessWidget {
  const LastTransactionList({super.key});

  static final List<LastTransactionModel> items = [
    LastTransactionModel(
      image: Assets.imagesAvatar1,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
    ),
    LastTransactionModel(
      image: Assets.imagesAvatar2,
      name: ' Josua Nunito',
      email: 'Josh Nunito@gmail.com',
    ),
    LastTransactionModel(
      image: Assets.imagesAvatar1,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
    ),
    LastTransactionModel(
      image: Assets.imagesAvatar2,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: LastTransactionListBody(lastTransactionModel: e),
              ),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 75,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     shrinkWrap: true,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) => IntrinsicWidth(
    //       child: LastTransactionListBody(lastTransactionModel: items[index]),
    //     ),
    //   ),
    // );
  }
}
