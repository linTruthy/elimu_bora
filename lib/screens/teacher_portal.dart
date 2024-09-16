// teacher_portal.dart
import 'package:flutter/cupertino.dart';

class TeacherPortal extends StatelessWidget {
  const TeacherPortal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Teacher Portal'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            _buildSection('Class Management', CupertinoIcons.person_3_fill, [
              _buildTile('View Classes', CupertinoIcons.list_bullet),
              _buildTile('Student Roster', CupertinoIcons.person_2_fill),
            ]),
            _buildSection('Academic Records', CupertinoIcons.doc_text_fill, [
              _buildTile('Record Grades', CupertinoIcons.pencil),
              _buildTile('Attendance', CupertinoIcons.checkmark_circle),
            ]),
            _buildSection('Assignments', CupertinoIcons.square_list_fill, [
              _buildTile('Create Assignment', CupertinoIcons.add_circled),
              _buildTile('Grade Submissions', CupertinoIcons.star_fill),
            ]),
            _buildSection('Communication', CupertinoIcons.chat_bubble_2_fill, [
              _buildTile('Message Parents', CupertinoIcons.person_crop_circle_badge_exclam),
              _buildTile('Announcements', CupertinoIcons.speaker_1),
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