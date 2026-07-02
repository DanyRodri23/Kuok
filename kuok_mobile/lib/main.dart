import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'routes/app_router.dart';

void main() {
  runApp(const KuokApp());
}

class KuokApp extends StatelessWidget {
  const KuokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Kuok',
      theme: AppTheme.darkTheme,
      routerConfig: appRouter,
    );
  }
}