
// widgets/portal_selector.dart
import 'package:flutter/cupertino.dart';
import 'package:elimu_bora/screens/student_portal.dart';
import 'package:elimu_bora/screens/teacher_portal.dart';
import 'package:elimu_bora/screens/admin_portal.dart';
import 'package:elimu_bora/screens/parent_portal.dart';

class PortalSelector extends StatelessWidget {
  const PortalSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPortalButton(context, 'Student Portal', CupertinoIcons.person_2_fill, StudentPortal()),
        _buildPortalButton(context, 'Teacher Portal', CupertinoIcons.person_3_fill, TeacherPortal()),
        _buildPortalButton(context, 'Admin Portal', CupertinoIcons.settings_solid, AdminPortal()),
        _buildPortalButton(context, 'Parent Portal', CupertinoIcons.person_2_square_stack_fill, ParentPortal()),
      ],
    );
  }

  Widget _buildPortalButton(BuildContext context, String title, IconData icon, Widget destination) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CupertinoButton.filled(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            const SizedBox(width: 8),
            Text(title),
          ],
        ),
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(builder: (context) => destination));
        },
      ),
    );
  }
}