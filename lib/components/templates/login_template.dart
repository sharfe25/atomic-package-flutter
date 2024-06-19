import 'package:flutter/material.dart';
import '../organisms/login_form.dart';

/// A widget that provides a template for the login page.
///
/// This widget includes a scaffold with an app bar and a padded body that
/// contains a [LoginForm]. It structures the layout of the login page.
class LoginTemplate extends StatelessWidget {
  /// The controller for the username text field.
  final TextEditingController usernameController;

  /// The controller for the password text field.
  final TextEditingController passwordController;

  /// The callback function to be executed when the login button is pressed.
  final VoidCallback onLogin;

  /// Creates a [LoginTemplate].
  ///
  /// The [usernameController], [passwordController], and [onLogin]
  /// parameters are required.
  const LoginTemplate({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LoginForm(
          usernameController: usernameController,
          passwordController: passwordController,
          onLogin: onLogin,
        ),
      ),
    );
  }
}
