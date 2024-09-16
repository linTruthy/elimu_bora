// student_portal.dart

import 'package:flutter/cupertino.dart';

class SubmitAssignmentScreen extends StatefulWidget {
  const SubmitAssignmentScreen({super.key});

  @override
  _SubmitAssignmentScreenState createState() => _SubmitAssignmentScreenState();
}

class _SubmitAssignmentScreenState extends State<SubmitAssignmentScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String? _selectedSubject;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Submit Assignment'),
      ),
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            CupertinoTextField(
              controller: _titleController,
              placeholder: 'Assignment Title',
            ),
            const SizedBox(height: 16),
            CupertinoTextField(
              controller: _descriptionController,
              placeholder: 'Assignment Description',
              maxLines: 5,
            ),
            const SizedBox(height: 16),
            CupertinoButton.filled(
              child: const Text('Select Subject'),
              onPressed: () => _showSubjectPicker(context),
            ),
            const SizedBox(height: 8),
            Text('Selected Subject: ${_selectedSubject ?? 'None'}'),
            const SizedBox(height: 16),
            CupertinoButton.filled(
              child: const Text('Attach File'),
              onPressed: () {
                // Implement file attachment functionality
              },
            ),
            const SizedBox(height: 32),
            CupertinoButton.filled(
              child: const Text('Submit Assignment'),
              onPressed: () {
                // Implement submit assignment functionality
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showSubjectPicker(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 200,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: CupertinoPicker(
            itemExtent: 32,
            onSelectedItemChanged: (int selectedItem) {
              setState(() {
                _selectedSubject = [
                  'Mathematics',
                  'Science',
                  'History',
                  'Literature'
                ][selectedItem];
              });
            },
            children: const [
              Text('Mathematics'),
              Text('Science'),
              Text('History'),
              Text('Literature'),
            ],
          ),
        ),
      ),
    );
  }
}
