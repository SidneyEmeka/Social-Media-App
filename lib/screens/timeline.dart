import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> with SingleTickerProviderStateMixin{
  static const List<Tab> myTimelineTabs = [
    Tab(text: "For you"),
    Tab(text: "Following",)
  ];

  late TabController mytabController;
  @override
  void initState() {
    super.initState();
    mytabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    mytabController.dispose();
    super.dispose();
  }

  List<BottomNavigationBarItem> navItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: "Home"),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
        ),
        label: "search"),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.mic,
        ),
        label: "space"),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.people,
        ),
        label: "community"),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications_active_outlined,
        ),
        label: "notifications"),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.mail_outlined,
        ),
        label: "messages"),
  ];

  int currentIndex = 0;



  Widget buildTimelinebody(int index) {
    switch (index) {
      case 0:
        return TwitterPostsPage(
          controller: mytabController,
        );
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
          child: Text("Notifications"),
        );
      case 5:
        return const Center(
          child: Text("Message"),
        );
      default:
         TwitterPostsPage( controller: mytabController);
    }
    return TwitterPostsPage( controller: mytabController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
              child: Image.asset(
            "assets/pfp.jpeg",
            fit: BoxFit.cover,
            height: 8,
            width: 10,
          )),
        ),
        title: Image.asset(
          "assets/logo.jpg",
          fit: BoxFit.cover,
          width: 40,
          height: 40,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: buildTimelinebody(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.red.shade300,
        currentIndex: currentIndex,
        items: navItems,
        showSelectedLabels: false,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

class TwitterPostsPage extends StatelessWidget {
  final TabController controller;
  const TwitterPostsPage({super.key, required this.controller, });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
        children: [
      SingleChildScrollView(
        child: Column(
          children: [
            Text("Helllo, Thats the twwet")
          ],
        ),
      ),
          Column(
           children: [Text("People You Follow")],
          )
    ]);
  }
}
