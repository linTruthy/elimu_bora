// admin_portal.dart
import 'package:flutter/cupertino.dart';

class AdminPortal extends StatelessWidget {
  const AdminPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Admin Portal'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            _buildSection('School Management', CupertinoIcons.building_2_fill, [
              _buildTile('School Activities', CupertinoIcons.calendar),
              _buildTile('Academic Overview', CupertinoIcons.chart_bar_alt_fill),
            ]),
            _buildSection('Staff Management', CupertinoIcons.person_3_fill, [
              _buildTile('Teacher Directory', CupertinoIcons.person_2_square_stack),
              _buildTile('Staff Attendance', CupertinoIcons.time),
            ]),
            _buildSection('Resource Management', CupertinoIcons.cube_box_fill, [
              _buildTile('Inventory', CupertinoIcons.archivebox_fill),
              _buildTile('Budget', CupertinoIcons.money_dollar_circle_fill),
            ]),
            _buildSection('Communication', CupertinoIcons.chat_bubble_2_fill, [
              _buildTile('Announcements', CupertinoIcons.speaker),
              _buildTile('Parent-Teacher Meetings', CupertinoIcons.person_2_square_stack),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, IconData icon, List<Widget> children) {
    return CupertinoListSection.insetGrouped(
      header: Text(title),
      children: children,
    );
  }

  Widget _buildTile(String title, IconData icon) {
    return CupertinoListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const CupertinoListTileChevron(),
      onTap: () {
        // Navigate to the respective screen
      },
    );
  }
}