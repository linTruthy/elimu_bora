// student_portal.dart
import 'package:flutter/cupertino.dart';

import 'progress_reports_screen.dart';
import 'school_activities_screen.dart';
import 'submit_assignment_screen.dart';
import 'upcoming_events_screen.dart';
import 'view_grades_screen.dart';

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
              _buildTile('View Grades', CupertinoIcons.doc_text, context),
              _buildTile(
                  'Progress Reports', CupertinoIcons.graph_circle, context),
            ]),
            _buildSection('Course Materials', CupertinoIcons.book_fill, [
              _buildTile('Access Textbooks', CupertinoIcons.book, context),
              _buildTile(
                  'View Lecture Notes', CupertinoIcons.doc_text_fill, context),
            ]),
            _buildSection('Assignments',
                CupertinoIcons.rectangle_fill_on_rectangle_angled_fill, [
              _buildTile('Pending Assignments', CupertinoIcons.time, context),
              _buildTile('Submit Assignment', CupertinoIcons.arrow_up_doc_fill,
                  context),
            ]),
            _buildSection('School Activities', CupertinoIcons.calendar, [
              _buildTile('Upcoming Events', CupertinoIcons.calendar_badge_plus,
                  context),
              _buildTile('Extracurricular Activities',
                  CupertinoIcons.sportscourt, context),
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

  Widget _buildTile(String title, IconData icon, BuildContext context) {
    return CupertinoListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const CupertinoListTileChevron(),
      onTap: () {
        // Navigate to the respective screen

        Widget destinationScreen;
        switch (title) {
          case 'View Grades':
            destinationScreen = const ViewGradesScreen();
            break;
          case 'Progress Reports':
            destinationScreen = const ProgressReportsScreen();
            break;
          case 'Upcoming Events':
            destinationScreen = const UpcomingEventsScreen();
            break;
          case 'Submit Assignment':
            destinationScreen = const SubmitAssignmentScreen();
            break;
          case 'School Activities':
            destinationScreen = const SchoolActivitiesScreen();
            break;
          default:
            // If we don't have a specific screen, we'll show a placeholder
            destinationScreen = CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text(title),
              ),
              child: Center(child: Text('$title screen is under construction')),
            );
        }
        Navigator.of(context).push(
          CupertinoPageRoute(builder: (context) => destinationScreen),
        );
      },
    );
  }
}
