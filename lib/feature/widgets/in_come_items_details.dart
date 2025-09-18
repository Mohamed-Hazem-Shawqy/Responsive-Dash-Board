import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/model/in_come_model.dart';
import 'package:responsive_dash_board/feature/widgets/in_come_details_shape.dart';

class InComeItemsDetails extends StatelessWidget {
  const InComeItemsDetails({super.key});
  static const List<InComeModel> item = [
    InComeModel(
      text: 'Design service',
      precentage: '40%',
      color: Color(0xff208CC8),
    ),
    InComeModel(
      text: 'Design product',
      precentage: '25%',
      color: Color(0xff4EB7F2),
    ),
    InComeModel(
      text: 'Product royalti',
      precentage: '20%',
      color: Color(0xff064061),
    ),
    InComeModel(text: 'Other', precentage: '22%', color: Color(0xffE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: item.length,
    //   itemBuilder: (context, index) =>
    //       IncomeItemsDetailsShape(inComeModel: item[index]),
    // );
    return Column(
      children: item
          .map((e) => IncomeItemsDetailsShape(inComeModel: e))
          .toList(),
    );
  }
}
