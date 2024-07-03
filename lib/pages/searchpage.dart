import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  Widget whatsTrending(String topic, int noOfTweets, String location) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        Text(
          topic,
          style:
              const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          "$noOfTweets posts",
          style: const TextStyle(fontSize: 12,
              fontWeight: FontWeight.normal, color: Colors.black26),
        ),
        const SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              location,
              style: const TextStyle(fontSize: 10,
                  fontWeight: FontWeight.bold, color: Colors.black26),
            ),
            const Icon(Icons.more_horiz_outlined, color: Colors.black26, size: 15,)
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(
          color: Colors.black26,
          thickness: 1,
        )
      ],
    );
  }

  List<Tab> mytabs = <Tab>[
    const Tab(
      text: "For you",
    ),
    const Tab(
      text: "Trending",
    ),
    const Tab(
      text: "News",
    ),
    const Tab(
      text: "Sports",
    ),
    const Tab(
      text: "Entertainment",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytabs.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            indicatorColor: Colors.red.shade900,
            labelStyle: const TextStyle(
              fontSize: 10,
            ),
            // isScrollable: true,
            // labelPadding: EdgeInsetsDirectional.zero,
            tabs: mytabs,
          ),
        ),
        body: TabBarView(
          children: [
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: ListView(children: [
                  const Text(
                    "Trends for you",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  whatsTrending("Chloroquine", 5499, "Trending in Nigeria"),
                  whatsTrending("VDM", 4177, "Trending in Nigeria"),
                  whatsTrending("Whatsapp", 1127, "Trending"),
                  whatsTrending("I'm Igbo", 1278, "Trending in Nigeria"),
                  whatsTrending("Ibadan", 7022, "Trending in Nigeria"),
                  whatsTrending("Dear HR", 1582, "Trending"),
                  whatsTrending("#bbnaija", 1000, "Trending in Nigeria"),
                  whatsTrending("Dothraki", 7000, "Trending"),
                  whatsTrending("Flutter", 7000, "Trending in Technology"),
                  whatsTrending("Bitcoin Chief", 9899, "Trending in Nigeria"),

                ])),
            const Text("2"),
            const Text("3"),
            const Text("4"),
            const Text("5"),
          ],
        ),
      ),
    );
  }
}
