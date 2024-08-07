import 'package:twitter/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:twitter/screens/timeline.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: const AuthScreen(),
    );
  }
}
