import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../pages/searchpage.dart';
import '../pages/timelinebody.dart';

class UserTimeline extends StatefulWidget {
  const UserTimeline({super.key});

  @override
  State<UserTimeline> createState() => _UserTimelineState();
}

class _UserTimelineState extends State<UserTimeline> {
  int selectedIndex = 0;

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
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(255, 76, 0, 51),
            ),
          ),
          padding: const EdgeInsets.only(left: 15, bottom: 4),
          width: MediaQuery.of(context).size.width / 2,
          height: 30,
          child: TextField(
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
                  fontSize: 10),
            ),
          ),
        );
      case 2:
        return const Text("Space");
      case 3:
        return const Text("Community");
      case 4:
        return const Text("Messages");
      case 5:
        return const Text("Notifications");
      default:
        return const Text("Invalid page");
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
        return const Center(
          child: Text("Community"),
        );
      case 4:
        return const Center(
          child: Text("Messages"),
        );
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
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image.asset(
              "assets/pfp.jpeg",
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: buildtitle(selectedIndex),
        centerTitle: true,
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
