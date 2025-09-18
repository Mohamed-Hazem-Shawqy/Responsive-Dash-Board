import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';

class ChartContainDetails extends StatefulWidget {
  const ChartContainDetails({super.key});

  @override
  State<ChartContainDetails> createState() => _ChartContainDetailsState();
}

class _ChartContainDetailsState extends State<ChartContainDetails> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? -1.4 : null,
          titleStyle: activeIndex == 0
              ? AppStyle.styleRegular16(context)
              : AppStyle.styleRegular16(context).copyWith(color: Colors.white),
          title: activeIndex == 0 ? 'Design service' : '40%',
          radius: activeIndex == 0 ? 50 : 40,

          value: 40,
          color: Color(0xff208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? -1.3 : null,
          titleStyle: activeIndex == 1
              ? AppStyle.styleRegular16(context)
              : AppStyle.styleRegular16(context).copyWith(color: Colors.white),
          title: activeIndex == 1 ? 'Design product' : '25%',
          radius: activeIndex == 1 ? 50 : 40,
          value: 25,
          color: Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? -1.4 : null,
          titleStyle: activeIndex == 2
              ? AppStyle.styleRegular16(context)
              : AppStyle.styleRegular16(context).copyWith(color: Colors.white),
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          radius: activeIndex == 2 ? 50 : 40,

          value: 20,
          color: Color(0xff064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? -1.4 : null,
          titleStyle: activeIndex == 3
              ? AppStyle.styleRegular16(context)
              : AppStyle.styleRegular16(context).copyWith(color: Colors.white),
          title: activeIndex == 3 ? 'Other' : '22%',
          radius: activeIndex == 3 ? 50 : 40,

          value: 22,
          color: Color(0xffE2DECD),
        ),
      ],
    );
  }
}
