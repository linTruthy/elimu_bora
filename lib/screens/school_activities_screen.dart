// student_portal.dart

import 'package:flutter/cupertino.dart';

class SchoolActivitiesScreen extends StatelessWidget {
  const SchoolActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('School Activities'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            CupertinoListSection.insetGrouped(
              header: const Text('Clubs'),
              children: [
                _buildActivityTile('Drama Club', 'Thursdays, 3:00 PM - 5:00 PM'),
                _buildActivityTile('Chess Club', 'Tuesdays, 4:00 PM - 6:00 PM'),
                _buildActivityTile('Debate Society', 'Wednesdays, 3:30 PM - 5:30 PM'),
              ],
            ),
            CupertinoListSection.insetGrouped(
              header: const Text('Sports'),
              children: [
                _buildActivityTile('Soccer Team', 'Mon, Wed, Fri, 4:00 PM - 6:00 PM'),
                _buildActivityTile('Swimming', 'Tuesdays, 3:00 PM - 5:00 PM'),
                _buildActivityTile('Basketball', 'Thursdays, 4:00 PM - 6:00 PM'),
              ],
            ),
            CupertinoListSection.insetGrouped(
              header: const Text('Academic'),
              children: [
                _buildActivityTile('Math Olympiad', 'Every second Saturday, 10:00 AM - 1:00 PM'),
                _buildActivityTile('Science Fair Prep', 'Fridays, 3:30 PM - 5:30 PM'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityTile(String title, String schedule) {
    return CupertinoListTile(
      title: Text(title),
      subtitle: Text(schedule),
      trailing: const CupertinoListTileChevron(),
      onTap: () {
        // Implement view activity details functionality
      },
    );
  }
}