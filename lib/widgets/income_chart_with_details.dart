import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartWithDetails extends StatelessWidget {
  const IncomeChartWithDetails({super.key});


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      
      aspectRatio: 1,
      child: PieChart(
        getChartData()));
  }
  
  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          color: Color(0xFF208BC7),
          radius: 50,
        ),
        PieChartSectionData(
          value: 25,
          color: Color(0xFF4DB7F2),
          radius: 50,
        ),
        PieChartSectionData(
          value: 20,
          color: Color(0xFF064060),
          radius: 50,
        ),
        PieChartSectionData(
          value: 22,
          color: Color(0xFFE2DECD),
          radius: 50,
        ),
      ]
    );
  }
}