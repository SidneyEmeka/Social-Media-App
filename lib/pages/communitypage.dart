import 'package:flutter/material.dart';

class Communitypage extends StatelessWidget {
  const Communitypage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            bottom: TabBar(
              indicatorColor: Colors.red.shade900,
              dividerColor: Colors.grey.shade500,
              labelColor: Colors.black,
              labelPadding: const EdgeInsets.only(bottom: 5),
              tabs: const [
                Text("My Communities"),
                Text("Explore"),
              ],
            ),
          ),
        ),

    );
  }
}
