// student_portal.dart
import 'package:flutter/cupertino.dart';

class StudentPortal extends StatelessWidget {
  const StudentPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Student Portal'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            _buildSection(
                'Academic Performance', CupertinoIcons.chart_bar_fill, [
              _buildTile('View Grades', CupertinoIcons.doc_text),
              _buildTile('Progress Reports', CupertinoIcons.graph_circle),
            ]),
            _buildSection('Course Materials', CupertinoIcons.book_fill, [
              _buildTile('Access Textbooks', CupertinoIcons.book),
              _buildTile('View Lecture Notes', CupertinoIcons.doc_text_fill),
            ]),
            _buildSection('Assignments',
                CupertinoIcons.rectangle_fill_on_rectangle_angled_fill, [
              _buildTile('Pending Assignments', CupertinoIcons.time),
              _buildTile('Submit Assignment', CupertinoIcons.arrow_up_doc_fill),
            ]),
            _buildSection('School Activities', CupertinoIcons.calendar, [
              _buildTile('Upcoming Events', CupertinoIcons.calendar_badge_plus),
              _buildTile(
                  'Extracurricular Activities', CupertinoIcons.sportscourt),
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
