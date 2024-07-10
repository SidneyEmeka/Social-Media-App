import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Messagespage extends StatefulWidget {
  const Messagespage({super.key});

  @override
  State<Messagespage> createState() => _MessagespageState();
}

class _MessagespageState extends State<Messagespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 35,
            child: TextField(
              cursorColor: Colors.grey.shade200,
              textAlign: TextAlign.center,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[a-zA-z]'))
              ],
              style: const TextStyle(
                fontSize: 10,
              ),
              enableSuggestions: true,
              keyboardType: TextInputType.text,
              decoration:  const InputDecoration(
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                //prefixIcon: Icon(Icons.search_rounded, size: 10,),
                hintText: "Search Direct Messages",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
