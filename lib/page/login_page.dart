import 'package:flutter/cupertino.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemBackground,
      navigationBar: CupertinoNavigationBar(
        middle: Text('School Admin Login'),
        backgroundColor: CupertinoColors.activeBlue,
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Branding(),
                SizedBox(height: 40),
                LoginForm(),
                SizedBox(height: 20),
                ForgotPasswordLink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Branding extends StatelessWidget {
  const Branding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          CupertinoIcons.book_fill,
          size: 80,
          color: CupertinoColors.activeBlue,
        ),
        const SizedBox(height: 16),
        Text(
          'Elimu Bora',
          style: TextStyle(
            color: CupertinoColors.label.resolveFrom(context),
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Empowering Education',
          style: TextStyle(
            color: CupertinoColors.secondaryLabel.resolveFrom(context),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoFormSection.insetGrouped(
      header: const Text('LOGIN'),
      children: const [
        UserNameField(),
        PasswordField(),
        SizedBox(height: 20),
        LoginButton(),
      ],
    );
  }
}

class UserNameField extends StatelessWidget {
  const UserNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTextFormFieldRow(
      prefix: const Icon(CupertinoIcons.person, color: CupertinoColors.activeBlue),
      placeholder: 'Username',
      padding: const EdgeInsets.symmetric(vertical: 12),
      autocorrect: false,
      decoration: BoxDecoration(
        color: CupertinoColors.tertiarySystemFill,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTextFormFieldRow(
      prefix: const Icon(CupertinoIcons.lock, color: CupertinoColors.activeBlue),
      placeholder: 'Password',
      obscureText: true,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: CupertinoColors.tertiarySystemFill,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      onPressed: () {
        // Add login logic here
      },
      child: const Text('Login'),
    );
  }
}

class ForgotPasswordLink extends StatelessWidget {
  const ForgotPasswordLink({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: const Text('Forgot Password?'),
      onPressed: () {
        // Add forgot password logic here
      },
    );
  }
}