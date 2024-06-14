import 'package:flutter/material.dart';
import '../templates/login_template.dart';

/// A widget that displays a login page.
///
/// This widget integrates the [LoginTemplate] to structure the login form,
/// handling user input for username and password, and providing a login
/// button.
class LoginPage extends StatelessWidget {
  /// The callback function to be executed when the login button is pressed.
  final VoidCallback handleLogin;

  /// The controller for the username text field.
  final TextEditingController usernameController;

  /// The controller for the password text field.
  final TextEditingController passwordController;

  /// Creates a [LoginPage].
  ///
  /// The [handleLogin], [usernameController], and [passwordController]
  /// parameters are required.
  const LoginPage({
    super.key,
    required this.handleLogin,
    required this.usernameController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return LoginTemplate(
      usernameController: usernameController,
      passwordController: passwordController,
      onLogin: handleLogin,
    );
  }
}
