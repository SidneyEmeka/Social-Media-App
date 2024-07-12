import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/communitypage.dart';
import '../pages/grokpage.dart';
import '../pages/messagespage.dart';
import '../pages/notificationspage.dart';
import '../pages/searchpage.dart';
import '../pages/timelinebody.dart';

class UserTimeline extends StatefulWidget {
  const UserTimeline({super.key});

  @override
  State<UserTimeline> createState() => _UserTimelineState();
}

class _UserTimelineState extends State<UserTimeline> {
  int selectedIndex = 0;

  Widget searchbar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey.shade600,
        ),
      ),
      //width: MediaQuery.of(context).size.width / 1.2,
      height: 35,
      child: TextField(
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
          hintText: "Search",
          hintStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }

  Widget buildtitle(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return Image.asset(
          "assets/logo.jpg",
          height: 40,
          width: 40,
          fit: BoxFit.cover,
        );
      case 1:
        return searchbar();
      case 2:
        return const Text("Space");
      case 3:
        return const Text(
          "Communities",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        );
      case 4:
        return const Text(
          "Messages",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        );
      case 5:
        return const Text(
          "Notifications",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        );
      default:
        return const Text("Invalid page");
    }
  }

  Widget buildActions(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const SizedBox(
          width: 0.0,
        );
      case 1:
        return const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.settings,
            color: Colors.black,
            size: 25,
          ),
        );
      case 2:
        return const SizedBox(
          width: 0.0,
        );
      case 3:
        return const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Row(
            children: [
              Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 25,
              ),
              Icon(
                Icons.people_alt_outlined,
                color: Colors.black,
                size: 25,
              )
            ],
          ),
        );
      case 4:
        return const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.settings,
            color: Colors.black,
            size: 25,
          ),
        );
      case 5:
        return const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.settings,
            color: Colors.black,
            size: 25,
          ),
        );
      default:
        return const SizedBox(
          width: 0.0,
        );
    }
  }

  Widget buildBody(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const Postspage();
      case 1:
        return const Searchpage();
      case 2:
        return const Grokpage();
      case 3:
        return const Communitypage();
      case 4:
        return const Messagespage();
      case 5:
        return const Notificationspage();
      default:
        const Center(
          child: Text("Home"),
        );
        return const Center(
          child: Text("Invalid Page"),
        );
    }
  }

  void onTapNavItem(int index) {
    setState(() {
      selectedIndex = index;
      // print(selectedIndex);
    });
  }

  List<BottomNavigationBarItem> navItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: "search",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.rectangle_outlined),
      label: "mic",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.people),
      label: "community",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.mail),
      label: "Mail",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: "Notifications",
    ),
  ];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/kvnpfp.jpg"),
                          )),
                    ),
                    verticalSpace(5),
                    const Text(
                      "Nnaemeka Sidney",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "@sidswipe",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                    verticalSpace(5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "987",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        horizontalSpace(3),
                        const Text(
                          "Following",
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.black45,
                              fontWeight: FontWeight.w500),
                        ),
                        horizontalSpace(10),
                        const Text(
                          "489",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        horizontalSpace(3),
                        const Text(
                          "Followers",
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.black45,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                Icon(FontAwesomeIcons.circleUser)
              ],
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              isThreeLine: false,
              leading: Icon(
                FontAwesomeIcons.user,
                color: Colors.black,
                size: 20,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              isThreeLine: false,
              leading: Icon(
                FontAwesomeIcons.twitter,
                color: Colors.black,
                size: 20,
              ),
              title: Text(
                "Premium",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              isThreeLine: false,
              leading: Icon(
                FontAwesomeIcons.bookmark,
                color: Colors.black,
                size: 20,
              ),
              title: Text(
                "Bookmarks",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              isThreeLine: false,
              leading: Icon(
                FontAwesomeIcons.briefcase,
                color: Colors.black,
                size: 20,
              ),
              title: Text(
                "Jobs",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              isThreeLine: false,
              leading: Icon(
                FontAwesomeIcons.noteSticky,
                color: Colors.black,
                size: 20,
              ),
              title: Text(
                "Lists",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              isThreeLine: false,
              leading: Icon(
                FontAwesomeIcons.microphoneLines,
                color: Colors.black,
                size: 20,
              ),
              title: Text(
                "Spaces",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              isThreeLine: false,
              leading: Icon(
                FontAwesomeIcons.moneyBills,
                color: Colors.black,
                size: 20,
              ),
              title: Text(
                "Monetization",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
              child: Divider(
                color: Colors.black26,
                thickness: 1,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Settings and Support",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  FontAwesomeIcons.angleDown,
                  color: Colors.black,
                  size: 20,
                )
              ],
            ),
           verticalSpace(50),
           Icon(FontAwesomeIcons.moon)
          ],
        ),
      )),
      appBar: AppBar(
        // leading: Padding(
        //     padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
        //     child: Container(
        //       decoration: const BoxDecoration(
        //           shape: BoxShape.circle,
        //           image: DecorationImage(
        //             fit: BoxFit.cover,
        //             image: AssetImage("assets/kvnpfp.jpg"),
        //           )),
        //     )),
        title: buildtitle(selectedIndex),
        centerTitle: true,
        actions: [buildActions(selectedIndex)],
      ),
      body: buildBody(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: selectedIndex,
        onTap: onTapNavItem,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black87,
        items: navItems,
      ),
    );
  }
}
