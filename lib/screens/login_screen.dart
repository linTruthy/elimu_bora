

// screens/login_screen.dart
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:elimu_bora/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Elimu Bora Login'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoTextField(
                controller: _emailController,
                placeholder: 'Email',
                keyboardType: TextInputType.emailAddress,
                prefix: const Icon(CupertinoIcons.mail),
              ),
              const SizedBox(height: 16),
              CupertinoTextField(
                controller: _passwordController,
                placeholder: 'Password',
                obscureText: true,
                prefix: const Icon(CupertinoIcons.lock),
              ),
              const SizedBox(height: 32),
              CupertinoButton.filled(
                child: const Text('Login'),
                onPressed: () {
                  final authService = Provider.of<AuthService>(context, listen: false);
                  authService.login(_emailController.text, _passwordController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}