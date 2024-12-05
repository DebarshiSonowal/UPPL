// import 'package:fl_chart_app/presentation/resources/app_resources.dart';
import 'package:fl_chart/fl_chart.dart';
// import 'package:fl_chart_app/presentation/widgets/indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uppl/Repository/repository.dart';

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
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      // fetchAudienceDemographic(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Repository>(builder: (context, data, _) {
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
                    sections: showingSections(
                        data.demographyData?.malePercentage ?? 0.0,
                        data.demographyData?.femalePercentage ?? 0.0),
                  ),
                ),
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Indicator(
                  color: Color(0xff4D96FF),
                  text: 'Male',
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Color(0xffFE9EE3),
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
    });
  }

  List<PieChartSectionData> showingSections(double male, double female) {
    return [
      PieChartSectionData(
        color: const Color(0xff4D96FF),
        value: male,
        title: '$male%',
        radius: touchedIndex == 0 ? 60.0 : 50.0,
        titleStyle: TextStyle(
          fontSize: touchedIndex == 0 ? 24.0 : 12.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      PieChartSectionData(
        color: const Color(0xffFE9EE3),
        value: female,
        title: '$female%',
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
