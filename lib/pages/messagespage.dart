import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Messagespage extends StatefulWidget {
  const Messagespage({super.key});

  @override
  State<Messagespage> createState() => _MessagespageState();
}

class _MessagespageState extends State<Messagespage> {
  Widget horizontalSpace(double val) {
    return SizedBox(
      width: val,
    );
  }

  Widget verticalSpace(double val) {
    return SizedBox(
      height: val,
    );
  }

  Widget messageTile(String imgUrl, String handle, String userName, String date,
      String lastText) {
    return Container(

        margin: const EdgeInsets.only(left: 5, right: 5, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Image on Left
            Expanded(
                flex: 1,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imgUrl),
                      )),
                )),
            horizontalSpace(10),

            ///Others on Right
            Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///Handle Row
                    Row(
                      children: [
                        Text(
                          handle,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        horizontalSpace(5),
                        Text(
                          "@$userName",
                          style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.0),
                          child: Icon(
                            Icons.circle,
                            size: 3,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),

                    //Message Snippet
                    Text(
                      lastText,
                      style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )
                  ],
                )),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        leading: const SizedBox(),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(35),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey.shade600,
                  ),
                ),
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
                  decoration: InputDecoration(
                    disabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    hintText: "Search Direct Messages",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade500,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1, color: Colors.grey.shade500),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            messageTile("assets/me.jpg", "Nnaemeka Sidney", "sidswipe",
                "10/06/2024", "How fa"),
            messageTile(
                "assets/me.jpg",
                "barrywhyte",
                "bubebarrywhyteyyy",
                "10/06/2024",
                "Thank you for your trial... Your attempt did not match our lucky box. Let's give it another shot"),
            messageTile("assets/me.jpg", "Nnaemeka Sidney", "sidswipe",
                "10/06/2024", "How fa"),
            messageTile("assets/me.jpg", "Nnaemeka Sidney", "sidswipe",
                "10/06/2024", "How fa"),
            messageTile("assets/me.jpg", "Nnaemeka Sidney", "sidswipe",
                "10/06/2024", "How fa"),
            messageTile("assets/me.jpg", "Nnaemeka Sidney", "sidswipe",
                "10/06/2024", "How fa"),
            messageTile("assets/me.jpg", "Nnaemeka Sidney", "sidswipe",
                "10/06/2024", "How fa"),
            messageTile("assets/me.jpg", "Nnaemeka Sidney", "sidswipe",
                "10/06/2024", "How fa"),
            messageTile("assets/me.jpg", "Nnaemeka Sidney", "sidswipe",
                "10/06/2024", "How fa"),
            messageTile("assets/me.jpg", "Nnaemeka Sidney", "sidswipe",
                "10/06/2024", "How fa"),
            messageTile("assets/me.jpg", "Nnaemeka Sidney", "sidswipe",
                "10/06/2024", "How fa"),
            messageTile("assets/me.jpg", "Nnaemeka Sidney", "sidswipe",
                "10/06/2024", "How fa"),
          ],
        ),
      ),
    );
  }
}
