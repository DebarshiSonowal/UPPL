// import 'package:fl_chart_app/presentation/resources/app_resources.dart';
import 'package:fl_chart/fl_chart.dart';
// import 'package:fl_chart_app/presentation/widgets/indicator.dart';
import 'package:flutter/material.dart';

import 'indicator.dart';
// import 'package:fl_chart/indicator.dart';
class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Indicator(
                color: const Color(0xff4D96FF),
                text: 'Male',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: const Color(0xffFE9EE3),
                text: 'Female',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
            ],
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return [
      PieChartSectionData(
        color: const Color(0xff4D96FF),
        value: 67,
        title: '70%',
        radius: touchedIndex == 0 ? 60.0 : 50.0,
        titleStyle: TextStyle(
          fontSize: touchedIndex == 0 ? 25.0 : 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      PieChartSectionData(
        color: const Color(0xffFE9EE3),
        value: 33,
        title: '30%',
        radius: touchedIndex == 1 ? 60.0 : 50.0,
        titleStyle: TextStyle(
          fontSize: touchedIndex == 1 ? 25.0 : 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ];
  }

}