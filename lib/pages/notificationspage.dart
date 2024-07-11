import 'package:flutter/material.dart';

class Notificationspage extends StatefulWidget {
  const Notificationspage({super.key});

  @override
  State<Notificationspage> createState() => _NotificationspageState();
}

class _NotificationspageState extends State<Notificationspage> {
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

  Widget notifications(IconData action, Color iconColor, String pfp,
      String handle, String didWhat, String post, bool more) {
    return Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey.shade500),
        )),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Icon(
                  action,
                  color: iconColor,
                )),
            Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(pfp),
                          )),
                    ),
                    Row(
                      children: [
                        Text(
                          handle,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        horizontalSpace(5),
                        Text(
                          didWhat,
                          style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Text(
                      post,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade800),
                    ),
                    verticalSpace(5),
                    Text(
                      more ? "Show all" : "",
                      style: const TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            bottom: TabBar(
              indicatorColor: Colors.red.shade900,
              dividerColor: Colors.grey.shade500,
              labelColor: Colors.black,
              labelPadding: const EdgeInsets.only(bottom: 5),
              tabs: const [
                Text(
                  "All",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "Verified",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "Mentions",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    notifications(
                        Icons.favorite,
                        Colors.red.shade900,
                        "assets/aroja.jpg",
                        "Arojazanga",
                        "liked 4 of your posts",
                        "The repetition of an art makes its performance almost automatic.pic.twitter.com/304sD5Pu8D",
                        true),
                    notifications(
                        Icons.person,
                        Colors.blueAccent,
                        "assets/aroja.jpg",
                        "Arojazanga",
                        "followed you",
                        "",
                        false),
                    notifications(
                        Icons.favorite,
                        Colors.red.shade900,
                        "assets/aroja.jpg",
                        "Arojazanga",
                        "liked 4 of your posts",
                        "The repetition of an art makes its performance almost automatic.pic.twitter.com/304sD5Pu8D",
                        true),
                  ],
                ),
              ),
              const Text("2"),
              const Text("3"),
            ],
          ),
        ));
  }
}
