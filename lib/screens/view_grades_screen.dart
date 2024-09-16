// student_portal.dart
import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';

class ViewGradesScreen extends StatelessWidget {
  const ViewGradesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('View Grades'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            CupertinoListSection.insetGrouped(
              header: const Text('Current Semester'),
              children: [
                _buildGradeTile('Mathematics', 'A'),
                _buildGradeTile('Science', 'B+'),
                _buildGradeTile('History', 'A-'),
                _buildGradeTile('Literature', 'B'),
                _buildGradeTile('Physical Education', 'A'),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 200,
                child: LineChart(
                  LineChartData(
                    gridData: const FlGridData(show: false),
                    titlesData: const FlTitlesData(show: false),
                    borderData: FlBorderData(show: true),
                    minX: 0,
                    maxX: 5,
                    minY: 0,
                    maxY: 100,
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          const FlSpot(0, 80),
                          const FlSpot(1, 85),
                          const FlSpot(2, 90),
                          const FlSpot(3, 88),
                          const FlSpot(4, 92),
                        ],
                        isCurved: true,
                        color: CupertinoColors.activeBlue,
                        barWidth: 4,
                        isStrokeCapRound: true,
                        dotData: const FlDotData(show: false),
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradeTile(String subject, String grade) {
    return CupertinoListTile(
      title: Text(subject),
      trailing: Text(grade, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
