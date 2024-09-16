
// services/auth_service.dart
import 'package:flutter/foundation.dart';

class AuthService extends ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  Future<void> login(String email, String password) async {
    // Implement actual authentication logic here
    await Future.delayed(const Duration(seconds: 2)); // Simulating network request
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }
}