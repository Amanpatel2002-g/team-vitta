import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chartss extends StatefulWidget {
  const Chartss({super.key});

  @override
  State<Chartss> createState() => _ChartssState();
}

class _ChartssState extends State<Chartss> {
  @override
  Widget build(BuildContext context) {
    final double statusbarheight = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(
        top: statusbarheight,
        left: 40,
        right: 40,
        bottom: statusbarheight + 20,
      ),
      height: statusbarheight,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            show: false,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          gridData: FlGridData(
            show: false,
          ),
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 10,
          lineBarsData: [
            LineChartBarData(
              dotData: FlDotData(
                show: false,
              ),
              isCurved: false,
              barWidth: 2,
              show: true,
              belowBarData: BarAreaData(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xff23a3f1).withOpacity(0.8),
                    Color(0xff5caff3).withOpacity(0.7),
                    Color(0xff80bcf6).withOpacity(0.6),
                    Color(0xff9dc9f8).withOpacity(0.4),
                    Color(0xffb7d6fa).withOpacity(0.3),
                    Color(0xffd0e4fc).withOpacity(0.1),
                    Color(0xffe8f1fd).withOpacity(0.001),
                    Color(0xffffffff).withOpacity(0.0001),
                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.mirror,
                ),
                show: true,
              ),
              spots: [
                FlSpot(0, 3),
                FlSpot(1, 2),
                FlSpot(3, 5),
                FlSpot(3.5, 2),
                FlSpot(5, 7),
                FlSpot(7, 2),
                FlSpot(10, 6),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
