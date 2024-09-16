// student_portal.dart

import 'package:flutter/cupertino.dart';

class UpcomingEventsScreen extends StatelessWidget {
  const UpcomingEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Upcoming Events'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            CupertinoListSection.insetGrouped(
              header: const Text('This Week'),
              children: [
                _buildEventTile('Science Fair', 'April 15, 2024', '9:00 AM - 3:00 PM'),
                _buildEventTile('Parent-Teacher Conference', 'April 17, 2024', '4:00 PM - 7:00 PM'),
              ],
            ),
            CupertinoListSection.insetGrouped(
              header: const Text('Next Week'),
              children: [
                _buildEventTile('School Sports Day', 'April 22, 2024', 'All Day'),
                _buildEventTile('Career Guidance Seminar', 'April 24, 2024', '2:00 PM - 4:00 PM'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventTile(String title, String date, String time) {
    return CupertinoListTile(
      title: Text(title),
      subtitle: Text('$date\n$time'),
      trailing: const CupertinoListTileChevron(),
      onTap: () {
        // Implement view event details functionality
      },
    );
  }
}
