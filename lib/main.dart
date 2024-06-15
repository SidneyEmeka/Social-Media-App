import 'package:twitter/screens/sign_up.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent.withOpacity(0.8))
      ),
      debugShowCheckedModeBanner: false,
      home: const AuthScreen(),
    );
  }
}
