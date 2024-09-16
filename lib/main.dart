// main.dart
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:elimu_bora/services/auth_service.dart';
import 'package:elimu_bora/screens/login_screen.dart';
import 'package:elimu_bora/screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: const ElimuBoraApp(),
    ),
  );
}

class ElimuBoraApp extends StatelessWidget {
  const ElimuBoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Elimu Bora',
      theme: const CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
      ),
      home: Consumer<AuthService>(
        builder: (context, authService, child) {
          if (authService.isAuthenticated) {
            return const HomeScreen();
          } else {
            return const LoginScreen();
          }
        },
      ),
    );
  }
}
