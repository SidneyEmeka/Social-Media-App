import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    Widget buildTwitterLogo() {
      return  Center(
        child: Image.asset("assets/logo.jpg", fit: BoxFit.cover, width: 70, height: 70,
        ),
      );
    }

    //fingerprint Icon
    Widget buildFingerprintLogo() {
      return Center(
        child: SizedBox(
          height: 150,
          width: 300,
          child: Icon(
            Icons.fingerprint,
            size: 100,
            color: Colors.red.shade900,
          ),
        ),
      );
    }

    //buttons
    Widget buildButton(String label, bool showBg) {
      return Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            border: showBg
                ? Border.all(color: Colors.transparent)
                : Border.all(color: Colors.red.shade900, width: 2),
            color: showBg ? Colors.red.shade900 : Colors.transparent,
            borderRadius: BorderRadius.circular(15),
          ),
          width: 200,
          height: 45,
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: showBg ? Colors.white : Colors.red.shade900,
              ),
            ),
          ),
        ),
      );
    }

    //vertical spaces
    Widget verticalSpace(double value) {
      return SizedBox(
        height: value,
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(
          top: 40,
          left: 30,
          right: 30,
          bottom: 30,
        ),
        child: Column(
          children: [
            verticalSpace(60),
            buildTwitterLogo(),
            verticalSpace(60),
             Text(
              "See what's happening in \n the world right now",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.red.shade900,
              ),
            ),
            verticalSpace(40),
            buildButton("Sign in", true),
            verticalSpace(20),
            buildButton("Log in", false),
            verticalSpace(40),
             Text(
              "OR",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade900),
            ),
             Text(
              "Log in with",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.red.shade900),
            ),
            verticalSpace(10),
            buildFingerprintLogo()
          ],
        ),
      ),
    );
  }
}
