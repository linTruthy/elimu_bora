// parent_portal.dart
import 'package:flutter/cupertino.dart';

class ParentPortal extends StatelessWidget {
  const ParentPortal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Parent Portal'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            _buildSection('Child\'s Performance', CupertinoIcons.person_fill, [
              _buildTile('Academic Progress', CupertinoIcons.chart_bar_fill),
              _buildTile('Attendance Record', CupertinoIcons.calendar_badge_minus),
            ]),
            _buildSection('Communication', CupertinoIcons.chat_bubble_2_fill, [
              _buildTile('Message Teachers', CupertinoIcons.person_crop_circle_badge_exclam),
              _buildTile('View Announcements', CupertinoIcons.speaker),
            ]),
            _buildSection('School Information', CupertinoIcons.info_circle_fill, [
              _buildTile('Events Calendar', CupertinoIcons.calendar),
              _buildTile('School Policies', CupertinoIcons.doc_text_fill),
            ]),
            _buildSection('Financial', CupertinoIcons.money_dollar_circle_fill, [
              _buildTile('View Fees', CupertinoIcons.money_dollar),
              _buildTile('Make Payment', CupertinoIcons.creditcard_fill),
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