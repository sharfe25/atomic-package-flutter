import 'package:flutter/material.dart';

import '../atoms/icon_button_widget.dart';

/// A widget that displays a login form with username and password fields
/// and a login button.
/// 
/// This widget is useful for handling user authentication input.
class LoginForm extends StatelessWidget {
  /// The controller for the username text field.
  final TextEditingController usernameController;

  /// The controller for the password text field.
  final TextEditingController passwordController;

  /// The callback function to be executed when the login button is pressed.
  final VoidCallback onLogin;

  /// Creates a [LoginForm].
  ///
  /// The [usernameController], [passwordController], and [onLogin] parameters are required.
  const LoginForm({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: usernameController,
          decoration: const InputDecoration(labelText: 'Username'),
        ),
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(labelText: 'Password'),
          obscureText: true, 
        ),
        const SizedBox(height: 16),
        IconButtonWidget(
          icon: Icons.login,
          onPressed: onLogin,
        ),
      ],
    );
  }
}
