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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        mini: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.deepOrange.shade900, shape: BoxShape.circle),
            ),
            const Icon(
              FontAwesomeIcons.envelope,
              size: 20,
              color: Colors.white,
            ),
            Positioned(
              right: 6,
              bottom: 5,
              child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.red.shade900, shape: BoxShape.circle),
                  child: const Icon(
                    FontAwesomeIcons.plus,
                    size: 8,
                    color: Colors.white,
                    weight: 30,
                  )),
            ),
          ],
        ),
        // child: const Icon(
        //   FontAwesomeIcons.envelope,
        //   color: Colors.white,
        //   size: 15,
        // ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 16,
        shadowColor: Colors.transparent,
        leading: const SizedBox(),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              Divider(
                thickness: 1,
                color: Colors.grey.shade500,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            messageTile("assets/fybanner.jpg", "Chris Abba", "iamhighbow",
                "10/06/2024", "It has finished"),
            messageTile(
                "assets/barrypfp.jpg",
                "barrywhyte",
                "bubebarrywhyteyyy",
                "10/06/2024",
                "Thank you for your trial... Your attempt did not match our lucky box. Let's give it another shot"),
            messageTile("assets/sails.jpg", "Bas'i Okansi", "bansi",
                "1/06/2024", "Alright"),
            messageTile("assets/kedupfp.jpg", "Kedu App", "keduapp",
                "19/05/2024", "Welcome Onboard"),
            messageTile("assets/lp.jpg", "Riddit", "thereal_riddit",
                "10/05/2024", "Probably next week or so"),
            messageTile("assets/wizpfp.jpg", "Wizkid", "wizkidayo", "1/05/2024",
                " 🦅 "),
            messageTile(
                "assets/bpfp.jpg",
                "Bitcoin Chief",
                "gauischibueze",
                "23/04/2024",
                "Are the candidates still playing or are they learning"),
            messageTile(
                "assets/cypfp.jpg",
                "Hertford Harry",
                "chizzywalter",
                "21/04/2024",
                "It does'nt matter matter as long they mint this week, we would still be in profit"),
            messageTile("assets/pfp.jpeg", "Casmir Eze", "ceze", "10/04/2024",
                "Sorry I missed your calls"),
            messageTile(
                "assets/truth.jpg",
                "Bright Stars",
                "brightstars",
                "1/04/2024",
                "You violated our community rules so you have been suspended"),
            messageTile("assets/theboys.jpg", "THE BOYS", "theboys",
                "11/03/2024", "You have been promoted"),
            messageTile("assets/kvnpfp.jpg", "Kvn Pablo", "kvngzpablo",
                "10/03/2024", "Odimma"),
          ],
        ),
      ),
    );
  }
}
