// screens/home_screen.dart
import 'package:flutter/cupertino.dart';
import 'package:elimu_bora/widgets/portal_selector.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Elimu Bora'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Elimu Bora',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            const PortalSelector(),
          ],
        ),
      ),
    );
  }
}
