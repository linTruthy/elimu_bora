import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Elimu Bora',
                  style: TextStyle(color: Colors.grey[600], fontSize: 40),
                ),
              ),
              Divider(
                height: double.infinity,
                
                color: Colors.grey[600],
              ),
              Card.filled(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 300,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              filled: true,
                              label: Text('User name'),
                              icon: Icon(Icons.verified_user)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.password))),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton.icon(
                            onPressed: null,
                            icon: const Icon(Icons.login_rounded),
                            label: const Text('Login'))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
