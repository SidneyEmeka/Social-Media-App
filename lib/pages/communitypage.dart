import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'foryouposts.dart';

class Communitypage extends StatefulWidget {
  const Communitypage({super.key});

  @override
  State<Communitypage> createState() => _CommunitypageState();
}

class _CommunitypageState extends State<Communitypage> {
  Widget horizontalSpace(double val) {
    return SizedBox(
      width: val,
    );
  }

  Widget verticalSpace(double val) {
    return SizedBox(
      height: val,
    );
  }

  Widget communityPostsHeader(String comName) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
      ),
      child: Row(
        children: [
          Icon(
            Icons.people,
            size: 15,
            color: Colors.grey.shade800,
          ),
          horizontalSpace(5),
          Text(
            comName,
            style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 10,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget communityBanner(String imgPath, String comname) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width / 2.9,
      height: MediaQuery.of(context).size.height / 9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          )),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.grey.shade700,
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(12))),
        child: Text(
          "$comname ",
          style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }

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
              Text(
                "My Communities  v",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Text(
                "Explore",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: TabBarView(
          ///COMMUNITY PAGE
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          communityBanner(
                              "assets/sails.jpg", "Boring JavaScript"),
                          horizontalSpace(10),
                          communityBanner("assets/truth.jpg", "Bright Stars"),
                          horizontalSpace(10),
                          communityBanner("assets/theboys.jpg", "THE BOYS"),
                          horizontalSpace(10),
                          communityBanner("assets/kvnpfp.jpg", "The Stylists"),
                          horizontalSpace(10),
                          communityBanner("assets/softamp.jpg", "SoftAmplify"),
                        ],
                      ),
                    ),
                  ),
                  Divider(thickness: 1, color: Colors.grey.shade500),
                  communityPostsHeader("THE BOYS"),
                  const Posts(
                    name: "Nnaemeka Sidney",
                    handle: "sidswipe",
                    time: "2m",
                    post:
                        "She told me 'If you dont want troubles avoid girlfriends'",
                    pfp: "assets/pfp.jpeg",
                    comments: "19",
                    reposts: "9",
                    likes: "129",
                    impressions: "3k",
                    postWithImage: false,
                    postWithImageUrl: '',
                  ),
                  verticalSpace(10),
                  communityPostsHeader("THE BOYS"),
                  const Posts(
                    name: "barrywhyte",
                    handle: "bubebarrywhyte3",
                    time: "2m",
                    post:
                        "I don't usually do this but I need your help guys\n\nI'm participating in rap cypher and I need as much votes as I can get 🙏🙏",
                    pfp: "assets/barrypfp.jpg",
                    comments: "70",
                    reposts: "3",
                    likes: "19",
                    impressions: "250",
                    postWithImage: false,
                    postWithImageUrl: '',
                  ),
                  verticalSpace(10),
                  communityPostsHeader("Boring JavaScript"),
                  const Posts(
                    name: "Stephanie Nnenna",
                    handle: "stephella",
                    time: "2s",
                    post: "Javascript is actually BORING! I'm out",
                    pfp: "assets/wizpfp.jpg",
                    comments: "23",
                    reposts: "8",
                    likes: "129",
                    impressions: "3k",
                    postWithImage: false,
                    postWithImageUrl: '',
                  ),
                  verticalSpace(10),
                  communityPostsHeader("Bright Stars"),
                  const Posts(
                    name: "Kvn Pablo",
                    handle: "kvn_pablo",
                    time: "29m",
                    post: "I aim, I shoot",
                    pfp: "assets/kvnpfp.jpg",
                    comments: "150",
                    reposts: "81",
                    likes: "29",
                    impressions: "300",
                    postWithImage: true,
                    postWithImageUrl: 'assets/aroja.jpg',
                  ),
                  verticalSpace(10),
                  communityPostsHeader("SoftAmplify"),
                  const Posts(
                    name: "Nestor Anyanwu",
                    handle: "nestorcy",
                    time: "19m",
                    post:
                        "Wonderful Community, Pls I really don't want to miss this hundred days of code",
                    pfp: "assets/lp.jpg",
                    comments: "5",
                    reposts: "1",
                    likes: "19",
                    impressions: "2.5k",
                    postWithImage: false,
                    postWithImageUrl: '',
                  ),
                  verticalSpace(10),
                ],
              ),
            ),

            ///EXPLORE PAGE
            DefaultTabController(
              length: 8,
              child: Scaffold(
                appBar: AppBar(
                  toolbarHeight: 0,
                  bottom: TabBar(
                    indicatorColor: Colors.transparent,
                    labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    dividerColor: Colors.transparent,
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    tabs: [
                      Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: const Text("Sports")),
                      Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: const Text("Cryptocurrency")),
                      Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: const Text("Travel")),
                      Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: const Text("X Official")),
                      Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: const Text("Health & Fitness")),
                      Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: const Text("Fashion & Beauty")),
                      Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: const Text("Education")),
                      Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: const Text("Culture")),
                    ],
                  ),
                ),
                body: TabBarView(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListView(
                      children: [
                        verticalSpace(10),
                        communityPostsHeader("One Piece"),
                        const Posts(
                          name: "Nestor Anyanwu",
                          handle: "nestorcy",
                          time: "19m",
                          post:
                              "Wonderful Community, Pls I really don't want to miss this hundred days of code",
                          pfp: "assets/lp.jpg",
                          comments: "5",
                          reposts: "1",
                          likes: "19",
                          impressions: "2.5k",
                          postWithImage: false,
                          postWithImageUrl: '',
                        ),
                        verticalSpace(10),
                        communityPostsHeader("Raven Flock"),
                        const Posts(
                          name: "Nnaemeka Sidney",
                          handle: "sidswipe",
                          time: "2m",
                          post:
                              "She told me 'If you dont want troubles avoid girlfriends'",
                          pfp: "assets/pfp.jpeg",
                          comments: "19",
                          reposts: "9",
                          likes: "129",
                          impressions: "3k",
                          postWithImage: false,
                          postWithImageUrl: '',
                        ),
                        verticalSpace(10),
                        communityPostsHeader("love island 2024"),
                        const Posts(
                          name: "barrywhyte",
                          handle: "bubebarrywhyte3",
                          time: "2m",
                          post:
                              "I don't usually do this but I need your help guys\n\nI'm participating in rap cypher and I need as much votes as I can get 🙏🙏",
                          pfp: "assets/barrypfp.jpg",
                          comments: "70",
                          reposts: "3",
                          likes: "19",
                          impressions: "250",
                          postWithImage: false,
                          postWithImageUrl: '',
                        ),
                        verticalSpace(10),
                        communityPostsHeader("Dogs"),
                        const Posts(
                          name: "Stephanie Nnenna",
                          handle: "stephella",
                          time: "2s",
                          post: "Javascript is actually BORING! I'm out",
                          pfp: "assets/wizpfp.jpg",
                          comments: "23",
                          reposts: "8",
                          likes: "129",
                          impressions: "3k",
                          postWithImage: false,
                          postWithImageUrl: '',
                        ),
                        verticalSpace(10),
                        communityPostsHeader("Bright Stars"),
                        const Posts(
                          name: "Kvn Pablo",
                          handle: "kvn_pablo",
                          time: "29m",
                          post: "I aim, I shoot",
                          pfp: "assets/kvnpfp.jpg",
                          comments: "150",
                          reposts: "81",
                          likes: "29",
                          impressions: "300",
                          postWithImage: true,
                          postWithImageUrl: 'assets/aroja.jpg',
                        ),
                        verticalSpace(10),
                      ],
                    ),
                  ),

                  const Text("Cryptocurrency"),
                  const Text("Travel"),
                  const Text("XOfficial"),
                  const Text("Health & Fitness"),
                  const Text("Fashion & Beauty"),
                  const Text("Education"),
                  //8
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListView(
                      children: [
                        verticalSpace(10),
                        communityPostsHeader("Bright Stars"),
                        const Posts(
                          name: "Kvn Pablo",
                          handle: "kvn_pablo",
                          time: "29m",
                          post: "I aim, I shoot",
                          pfp: "assets/kvnpfp.jpg",
                          comments: "150",
                          reposts: "81",
                          likes: "29",
                          impressions: "300",
                          postWithImage: true,
                          postWithImageUrl: 'assets/aroja.jpg',
                        ),
                        verticalSpace(10),
                        communityPostsHeader("One Piece"),
                        const Posts(
                          name: "Nestor Anyanwu",
                          handle: "nestorcy",
                          time: "19m",
                          post:
                              "Wonderful Community, Pls I really don't want to miss this hundred days of code",
                          pfp: "assets/lp.jpg",
                          comments: "5",
                          reposts: "1",
                          likes: "19",
                          impressions: "2.5k",
                          postWithImage: false,
                          postWithImageUrl: '',
                        ),
                        verticalSpace(10),
                        communityPostsHeader("Raven Flock"),
                        const Posts(
                          name: "Nnaemeka Sidney",
                          handle: "sidswipe",
                          time: "2m",
                          post:
                              "She told me 'If you dont want troubles avoid girlfriends'",
                          pfp: "assets/pfp.jpeg",
                          comments: "19",
                          reposts: "9",
                          likes: "129",
                          impressions: "3k",
                          postWithImage: false,
                          postWithImageUrl: '',
                        ),
                        verticalSpace(10),
                        communityPostsHeader("love island 2024"),
                        const Posts(
                          name: "barrywhyte",
                          handle: "bubebarrywhyte3",
                          time: "2m",
                          post:
                              "I don't usually do this but I need your help guys\n\nI'm participating in rap cypher and I need as much votes as I can get 🙏🙏",
                          pfp: "assets/barrypfp.jpg",
                          comments: "70",
                          reposts: "3",
                          likes: "19",
                          impressions: "250",
                          postWithImage: false,
                          postWithImageUrl: '',
                        ),
                        verticalSpace(10),
                        communityPostsHeader("Dogs"),
                        const Posts(
                          name: "Stephanie Nnenna",
                          handle: "stephella",
                          time: "2s",
                          post: "Javascript is actually BORING! I'm out",
                          pfp: "assets/wizpfp.jpg",
                          comments: "23",
                          reposts: "8",
                          likes: "129",
                          impressions: "3k",
                          postWithImage: false,
                          postWithImageUrl: '',
                        ),
                        verticalSpace(10),
                      ],
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
