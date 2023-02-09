import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:digitalwellbeing/main.dart';



class Pie extends StatelessWidget {
  final Map<String, double> dataMap;
  final List<Color> colorList;
  final String centerText;
  const Pie({Key? key, required this.dataMap, required this.colorList, required this.centerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 55,
      chartRadius: MediaQuery.of(context).size.width / 2.0,
      colorList: colorList,
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      ringStrokeWidth: 12,
      centerText: centerText,
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: true,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
      // gradientList: ---To add gradient colors---
      // emptyColorGradient: ---Empty Color gradient---
    );;
  }
}

