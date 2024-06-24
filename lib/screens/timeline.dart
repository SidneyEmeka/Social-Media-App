import 'package:flutter/material.dart';

import '../pages/timelinebody.dart';

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  int selectedIndex = 0;

  Widget buildBody(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const Postspage();
      case 1:
        return const Center(
          child: Text("Search"),
        );
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
      print(selectedIndex);
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
        title: Image.asset(
          "assets/logo.jpg",
          height: 40,
          width: 40,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: buildBody(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: selectedIndex,
        onTap: onTapNavItem,
        unselectedItemColor: Colors.red.shade400,
        selectedItemColor: Colors.red.shade900,
        items: navItems,
      ),
    );
  }
}
