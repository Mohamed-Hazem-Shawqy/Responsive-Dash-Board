import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
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
          radius: activeIndex == 0 ? 50 : 40,
          showTitle: false,
          value: 40,
          color: Color(0xff208CC8),
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 50 : 40,
          showTitle: false,
          value: 25,
          color: Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 50 : 40,
          showTitle: false,
          value: 20,
          color: Color(0xff064061),
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 50 : 40,
          showTitle: false,
          value: 22,
          color: Color(0xffE2DECD),
        ),
      ],
    );
  }
}
