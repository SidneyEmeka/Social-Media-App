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
      return const Center(
        child: SizedBox(
            height: 200,
            width: 200,
            child: Icon(
              FontAwesomeIcons.twitter,
              size: 70,
              color: Colors.white,
            )),
      );
    }

    Widget buildFingerprintLogo() {
      return const Center(
        child: SizedBox(
            height: 150,
            width: 300,
            child: Icon(
              Icons.fingerprint,
              size: 100,
              color: Colors.white,
            )),
      );
    }

    Widget buildButton(String label, bool showBg) {
      return Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            border: showBg
                ? Border.all(color: Colors.transparent)
                : Border.all(color: Colors.white, width: 2),
            color: showBg ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(15),
          ),
          width: 200,
          height: 45,
          child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: showBg ? Colors.blueAccent : Colors.white,
                ),
              )),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.blueAccent.withOpacity(0.8),
      body: Container(
        margin: const EdgeInsets.only(
          top: 40,
          left: 30,
          right: 30,
          bottom: 30,
        ),
        child: Column(
          children: [
            buildTwitterLogo(),
            const Text(
              "See what's happening in \n the world right now",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            buildButton("Sign in", true),
            const SizedBox(
              height: 20,
            ),
            buildButton("Log in", false),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "OR",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Text(
              "Log in with",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            buildFingerprintLogo()
          ],
        ),
      ),
    );
  }
}
