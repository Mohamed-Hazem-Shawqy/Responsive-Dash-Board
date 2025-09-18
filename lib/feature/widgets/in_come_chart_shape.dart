import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/feature/widgets/chart.dart';
import 'package:responsive_dash_board/feature/widgets/chart_contain_details.dart';
import 'package:responsive_dash_board/feature/widgets/in_come_items_details.dart';

class InComeChartShape extends StatelessWidget {
  const InComeChartShape({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width <= 1750
        ? Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ChartContainDetails(),
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(child: Chart()),
              const Expanded(child: InComeItemsDetails()),
            ],
          );
  }
}
