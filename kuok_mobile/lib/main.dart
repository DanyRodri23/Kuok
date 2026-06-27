import 'package:flutter/material.dart';

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
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF97316),
          brightness: Brightness.dark,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.car_repair,
              size: 90,
              color: Color(0xFFF97316),
            ),
            SizedBox(height: 20),
            Text(
              'Kuòk',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'La forma más segura de\ncomprar y vender repuestos',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}