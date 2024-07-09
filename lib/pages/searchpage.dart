import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  Widget whatsTrendingBanner(
      String imgPath, String type, String status, String name) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(imgPath),
        fit: BoxFit.cover,
      )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "$type ",
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 2,
                ),
                Text(
                  " $status",
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ],
            ),
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget whatsTrending(String topic, int noOfTweets, String location) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Text(
            topic,
            style: const TextStyle(
                fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            "$noOfTweets posts",
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.black26),
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                location,
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black26),
              ),
              const Icon(
                Icons.more_horiz_outlined,
                color: Colors.black26,
                size: 15,
              )
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
      ),
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
           tabAlignment: TabAlignment.start,
            indicatorColor: Colors.red.shade900,
            labelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            isScrollable: true,
            tabs: mytabs,
          ),
        ),
        body: TabBarView(
          children: [
            ListView(children: [
              whatsTrendingBanner("assets/fybanner.jpg", "Festival", "Live",
                  "ESSENCE Festival 2024"),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Text(
                  "Trends for you",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
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
            ]),

            //Trending
            ListView(children: [
              whatsTrendingBanner(
                  "assets/banner.webp", "Award", "Live", "BET Awards 2024"),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Text(
                  "United States trends",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              whatsTrending(
                  "Happy 4th of July", 7022, "Trending with God is good"),
              whatsTrending("Bitcoin Chief", 9899, "Trending with GCF"),
              whatsTrending("Epstein", 1582, "Politics . Trending"),
              whatsTrending("#Flutter", 1000, "Techonology . Trending"),
              whatsTrending("Dothraki", 7000, "Trending"),
              whatsTrending("bbnaija", 7000, "Trending in Technology"),
              whatsTrending("Chloroquine", 5499, "Trending in Nigeria"),
              whatsTrending("VDM", 4177, "Trending in Nigeria"),
              whatsTrending("Whatsapp", 1127, "Trending"),
              whatsTrending("I'm Igbo", 1278, "Trending in Nigeria"),
            ]),
            const Text("3"),
            const Text("4"),
            const Text("5"),
          ],
        ),
      ),
    );
  }
}
