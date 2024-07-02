import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage>
    with SingleTickerProviderStateMixin {
  late TabController _mytabController;

  static const List<Tab> mytabs = <Tab>[
    Tab(
      text: "For You",
    ),

    Tab(
      text: "Trending",
    ),
    Tab(
      text: "News",
    ),
    Tab(
      text: "Sports",
    ),
    Tab(
      text: "Entertainment",
    ),
  ];

  @override
  void initState() {
    _mytabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _mytabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar(
          labelStyle:
              const TextStyle(
                  fontSize: 10, fontWeight: FontWeight.bold),
          controller: _mytabController,
          tabs: mytabs,
        ),
      ),
      body: TabBarView(
        controller: _mytabController,
        children: const [
          Text("1"),
          Text("2"),
          Text("3"),
          Text("4"),
          Text("5"),
        ],
      ),
    );
  }
}
