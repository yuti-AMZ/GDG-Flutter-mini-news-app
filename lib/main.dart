import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const AlifNewsApp());
}

class AlifNewsApp extends StatelessWidget {
  const AlifNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alif News',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF5722)),
      ),
      home: const HomeScreen(),
    );
  }
}
