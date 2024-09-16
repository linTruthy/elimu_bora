// student_portal.dart

import 'package:flutter/cupertino.dart';

class ProgressReportsScreen extends StatelessWidget {
  const ProgressReportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Progress Reports'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            CupertinoListSection.insetGrouped(
              header: const Text('Available Reports'),
              children: [
                _buildReportTile('Mid-Term Report', 'March 15, 2024'),
                _buildReportTile('End of Semester Report', 'June 30, 2024'),
                _buildReportTile('Annual Progress Report', 'December 15, 2023'),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CupertinoButton.filled(
                child: const Text('Generate New Progress Report'),
                onPressed: () {
                  // Implement generate report functionality
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReportTile(String title, String date) {
    return CupertinoListTile(
      title: Text(title),
      subtitle: Text(date),
      trailing: const CupertinoListTileChevron(),
      onTap: () {
        // Implement view report functionality
      },
    );
  }
}
