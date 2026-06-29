import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/auth/presentation/pages/login_page.dart';

void main() {
  runApp(const KuokApp());
}

class KuokApp extends StatelessWidget {
  const KuokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kuòk',
      theme: AppTheme.darkTheme,
      home: const LoginPage(),
    );
  }
}