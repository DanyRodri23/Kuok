import 'package:flutter/material.dart';

import '../widgets/login_form.dart';
import '../widgets/login_header.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF0D0D0D),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 18,
          ),
          child: Column(
            children: [
              LoginHeader(),

              SizedBox(height: 18),

              Expanded(
                child: LoginForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}