import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  int currentIndex = 0;

  List<BottomNavigationBarItem> navItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home,),
    label: "Home"),
    const BottomNavigationBarItem(icon: Icon(Icons.search,),
        label: "search"),
    const BottomNavigationBarItem(icon: Icon(Icons.mic,),
        label: "space"),
    const BottomNavigationBarItem(icon: Icon(Icons.people,),
        label: "community"),
    const BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined,),
        label: "notifications"),
    const BottomNavigationBarItem(icon: Icon(Icons.mail_outlined,),
        label: "messages"),
  ];

  Widget buildTimelinebody(int index) {
    switch (index) {
      case 0:
        return const TwitterPostsPage();
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
        const TwitterPostsPage();
    }
    return const TwitterPostsPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(child: Image.asset("assets/pfp.jpeg", fit: BoxFit.cover, height: 10, width: 10,)),
        ),
        title: const Icon(FontAwesomeIcons.twitter, color: Colors.blueAccent,),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: buildTimelinebody(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade800,
        currentIndex: currentIndex,
        items: navItems,
        showSelectedLabels: false,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}







class TwitterPostsPage extends StatelessWidget {
  const TwitterPostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(),
    );
  }
}
