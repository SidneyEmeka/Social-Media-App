import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notificationspage extends StatefulWidget {
  const Notificationspage({super.key});

  @override
  State<Notificationspage> createState() => _NotificationspageState();
}

class _NotificationspageState extends State<Notificationspage> {
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

  Widget liked(bool verified, String pfp, String handle, String didWhat,
      String post, bool more) {
    return Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey.shade500),
        )),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red.shade900,
                )),
            Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(pfp),
                          )),
                    ),
                    verticalSpace(5),
                    Row(
                      children: [
                        Text(
                          handle,
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        horizontalSpace(5),
                        if (verified)
                          const Icon(
                            Icons.verified,
                            color: Colors.blueAccent,
                            size: 12,
                          ),
                        horizontalSpace(5),
                        Text(
                          didWhat,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Text(
                      post,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade800),
                    ),
                    verticalSpace(5),
                    if (more == true)
                      const Text(
                        "Show all",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w400),
                      ),
                  ],
                )),
          ],
        ));
  }

  Widget followed(
      bool verified, String pfp, String handle, String post, bool more) {
    return Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey.shade500),
        )),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
                flex: 1,
                child: Icon(
                  Icons.person,
                  color: Colors.blueAccent,
                )),
            Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(pfp),
                          )),
                    ),
                    verticalSpace(5),
                    Row(
                      children: [
                        Text(
                          handle,
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        horizontalSpace(5),
                        if (verified)
                          const Icon(
                            Icons.verified,
                            color: Colors.blueAccent,
                            size: 12,
                          ),
                        horizontalSpace(5),
                        const Text(
                          "followed you",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ],
                )),
          ],
        ));
  }

  Widget replied(
      bool verified,
      String communityN,
      String time,
      String mUsername,
      String rUsername,
      String pfp,
      String handle,
      String didWhat,
      String post,
      bool more) {
    return Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey.shade500),
        )),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Column(
          children: [
            Container(
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
                    communityN,
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            verticalSpace(5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(pfp),
                        )),
                  ),
                ),
                Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              handle,
                              style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            horizontalSpace(5),
                            if (verified)
                              const Icon(
                                Icons.verified,
                                color: Colors.blueAccent,
                                size: 12,
                              ),
                            horizontalSpace(5),
                            Text(
                              mUsername,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.black),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Icon(
                                Icons.circle,
                                size: 3,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              time,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Replying to",
                              style: const TextStyle(
                                  fontSize: 13, color: Colors.black),
                            ),
                            horizontalSpace(5),
                            Text(
                              "@$rUsername",
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.blueAccent),
                            ),
                          ],
                        ),
                        Text(
                          post,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )
                      ],
                    )),
              ],
            ),
          ],
        ));
  }

  Widget repost(
    bool verified,
    String pfp,
    String handle,
    String post,
  ) {
    return Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey.shade500),
        )),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
                flex: 1,
                child: Icon(
                  Icons.repeat,
                  color: Colors.green,
                )),
            Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(pfp),
                          )),
                    ),
                    verticalSpace(5),
                    Row(
                      children: [
                        Text(
                          handle,
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        horizontalSpace(5),
                        if (verified)
                          const Icon(
                            Icons.verified,
                            color: Colors.blueAccent,
                            size: 12,
                          ),
                        horizontalSpace(5),
                        const Text(
                          "reposted your reply",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Text(
                      post,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade800),
                    ),
                    verticalSpace(5),
                  ],
                )),
          ],
        ));
  }

  Widget notification(
      bool verified,
      String communityN,
      String time,
      String mUsername,
      String rUsername,
      String type,
      String pfp,
      String handle,
      String didWhat,
      String post,
      bool more) {
    if (type == "liked") {
      return liked(verified, pfp, handle, didWhat, post, more);
    } else if (type == "followed") {
      return followed(verified, pfp, handle, post, more);
    } else if (type == "replied") {
      return replied(verified, communityN, time, mUsername, rUsername, pfp,
          handle, didWhat, post, more);
    } else {
      return repost(verified, pfp, handle, post);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.red.shade900,
            elevation: 0,
            mini: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(
              FontAwesomeIcons.plus,
              color: Colors.white,
              size: 20,
            ),
          ),
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 0,
            bottom: TabBar(
              indicatorColor: Colors.red.shade900,
              dividerColor: Colors.grey.shade500,
              labelColor: Colors.black,
              labelPadding: const EdgeInsets.only(bottom: 5),
              tabs: const [
                Text(
                  "All",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "Verified",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "Mentions",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    notification(
                        true,
                        "THE BOYS",
                        "3s",
                        "arojazanga",
                        "@bubbebarrywgyte",
                        "repost",
                        "assets/aroja.jpg",
                        "Vit",
                        "liked 4 of your posts",
                        "Na why I like Science pass Art",
                        true),
                    notification(
                        true,
                        "",
                        "",
                        "mUsername",
                        "rUsername",
                        "liked",
                        "assets/aroja.jpg",
                        "Vit",
                        "liked 4 of your posts",
                        "The repetition of an art makes its performance almost automatic.pic.twitter.com/304sD5Pu8D",
                        true),
                    notification(
                        true,
                        "THE BOYS",
                        "2m",
                        "arojazanga",
                        "sidswipe",
                        "replied",
                        "assets/aroja.jpg",
                        "Vit",
                        "liked 4 of your posts",
                        "Make I drop for you OG\n\nE no dey happen to am no mean say e nor dey sup for here. We just don't like to say it cause it's too frequents for us",
                        true),
                    notification(
                        false,
                        "",
                        "",
                        "mUsername",
                        "rUsername",
                        "followed",
                        "assets/wizpfp.jpg",
                        "barrywhyte",
                        "liked 4 of your posts",
                        "The repetition of an art makes its performance almost automatic.pic.twitter.com/304sD5Pu8D",
                        true),
                    notification(
                        false,
                        "Bright Stars",
                        "133h",
                        "sidswipe",
                        "Kvn Pablo",
                        "replied",
                        "assets/me.jpg",
                        "Nnaemeka Sidney",
                        "liked 4 of your posts",
                        "lols, It's not that deep",
                        true),
                    notification(
                        false,
                        "",
                        "133h",
                        "mUsername",
                        "rUsername",
                        "liked",
                        "assets/aroja.jpg",
                        "Vit",
                        "liked your post",
                        "The repetition of an art makes its performance almost automatic.pic.twitter.com/304sD5Pu8D",
                        false),
                    notification(
                        false,
                        "Bright Stars",
                        "3h",
                        "chizzywalter",
                        "sidswipe",
                        "replied",
                        "assets/cypfp.jpg",
                        "Hertford Harry",
                        "liked 4 of your posts",
                        "lols, It's not that deep",
                        true),
                    notification(
                        false,
                        "",
                        "",
                        "mUsername",
                        "rUsername",
                        "followed",
                        "assets/aroja.jpg",
                        "Vit",
                        "liked 4 of your posts",
                        "The repetition of an art makes its performance almost automatic.pic.twitter.com/304sD5Pu8D",
                        true),
                  ],
                ),
              ),

              ///Verified
              SingleChildScrollView(
                child: Column(
                  children: [
                    notification(
                        true,
                        "THE BOYS",
                        "3s",
                        "arojazanga",
                        "@bubbebarrywgyte",
                        "replied",
                        "assets/aroja.jpg",
                        "Vit",
                        "liked 4 of your posts",
                        "Na why I like Science pass Art",
                        true),
                    notification(
                        true,
                        "Bright Stars",
                        "13s",
                        "bubbebarrywhyte",
                        "@sidswipe",
                        "replied",
                        "assets/wizpfp.jpg",
                        "barrwhyte",
                        "liked 4 of your posts",
                        "It's crazyyy",
                        true),
                    notification(
                        true,
                        "THE BOYS",
                        "3s",
                        "arojazanga",
                        "@bubbebarrywgyte",
                        "followed",
                        "assets/aroja.jpg",
                        "Vit",
                        "liked 4 of your posts",
                        "Na why I like Science pass Art",
                        true),
                    notification(
                        true,
                        "THE BOYS",
                        "3s",
                        "arojazanga",
                        "@bubbebarrywgyte",
                        "repost",
                        "assets/aroja.jpg",
                        "Vit",
                        "liked 4 of your posts",
                        "Na why I like Science pass Art",
                        true),
                    notification(
                        true,
                        "THE BOYS",
                        "3s",
                        "arojazanga",
                        "@bubbebarrywgyte",
                        "liked",
                        "assets/aroja.jpg",
                        "Vit",
                        "liked 4 of your posts",
                        "Na why I like Science pass Art",
                        true),
                    notification(
                        true,
                        "THE BOYS",
                        "3s",
                        "arojazanga",
                        "@bubbebarrywgyte",
                        "replied",
                        "assets/aroja.jpg",
                        "Vit",
                        "liked 4 of your posts",
                        "Na why I like Science pass Art",
                        true),
                    notification(
                        true,
                        "Bright Stars",
                        "13s",
                        "bubbebarrywhyte",
                        "@sidswipe",
                        "replied",
                        "assets/wizpfp.jpg",
                        "barrwhyte",
                        "liked 4 of your posts",
                        "It's crazyyy",
                        true),
                    notification(
                        true,
                        "THE BOYS",
                        "3s",
                        "arojazanga",
                        "@bubbebarrywgyte",
                        "followed",
                        "assets/aroja.jpg",
                        "Vit",
                        "liked 4 of your posts",
                        "Na why I like Science pass Art",
                        true),
                  ],
                ),
              ),
              const Text("3"),
            ],
          ),
        ));
  }
}
