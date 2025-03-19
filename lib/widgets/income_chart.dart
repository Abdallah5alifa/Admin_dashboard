import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()));
  }
  
  PieChartData getChartData() {
    return PieChartData(
      sections: [
        PieChartSectionData(
          value: 40,
          color: Color(0xFF208BC7),
          radius: 15,
          showTitle: false
        ),
        PieChartSectionData(
          value: 25,
          color: Color(0xFF4DB7F2),
          radius: 15,
          showTitle: false
        ),
        PieChartSectionData(
          value: 20,
          color: Color(0xFF064060),
          radius: 15,
          showTitle: false
        ),
        PieChartSectionData(
          value: 22,
          color: Color(0xFFE2DECD),
          radius: 15,
          showTitle: false
        ),
      ]
    );
  }
}