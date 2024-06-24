import 'package:flutter/material.dart';

class Postspage extends StatelessWidget {
  const Postspage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            bottom: TabBar(
              indicatorColor: Colors.red.shade900,
              dividerColor: Colors.black12,
              labelColor: Colors.black,
              labelPadding: EdgeInsets.only(bottom: 5),
              tabs: const [
                Text("For You"),
                Text("Following"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text("For you Tweets"),
              ),
              Center(
                child: Text("Following Tweets"),
              )
            ],
          )
        ));
  }
}
