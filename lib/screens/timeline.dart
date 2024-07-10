import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../pages/communitypage.dart';
import '../pages/messagespage.dart';
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
          color: Colors.black,
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
        decoration: const InputDecoration(
          disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          hintText: "Search",
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.black,
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
        return const Text("Notifications");
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
        return const SizedBox(
          width: 0.0,
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
        return const Center(
          child: Text("Space"),
        );
      case 3:
        return const Communitypage();
      case 4:
        return const Messagespage();
      case 5:
        return const Center(
          child: Text("Notifications"),
        );
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
      icon: Icon(Icons.mic),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/pfp.jpeg"),
                  )),
            )),
        title: buildtitle(selectedIndex),
        centerTitle: selectedIndex == 1 ? false : true,
        actions: [buildActions(selectedIndex)],
      ),
      body: buildBody(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: selectedIndex,
        onTap: onTapNavItem,
        unselectedItemColor: Colors.red.shade900,
        selectedItemColor: Colors.red.shade400,
        items: navItems,
      ),
    );
  }
}
