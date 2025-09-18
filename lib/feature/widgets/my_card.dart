import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/card_shape.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [const SizedBox(height: 20), CardShape()]);
  }
}
