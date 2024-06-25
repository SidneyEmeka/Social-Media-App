import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posts extends StatelessWidget {
  final bool postWithImage;
  final String postWithImageUrl;
  final String name;
  final String handle;
  final String time;
  final String post;
  final String pfp;
  final String comments;
  final String reposts;
  final String likes;
  final String impressions;

  const Posts(
      {super.key,
      required this.name,
      required this.handle,
      required this.time,
      required this.post,
      required this.pfp,
      required this.comments,
      required this.reposts,
      required this.likes,
      required this.impressions,
      required this.postWithImage,
      required this.postWithImageUrl});

  Widget verticalSpace(double value) {
    return SizedBox(
      height: value,
    );
  }

  Widget horizontalSpace(double value) {
    return SizedBox(
      width: value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1, color: Colors.grey.shade500))),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //pfp
          Expanded(
            flex: 1,
            child: Row(
              children: [
                ClipOval(
                    child: Image.asset(
                  pfp,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                )),
              ],
            ),
          ),

          //post
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                    horizontalSpace(5),
                    Text(
                      "@$handle",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    horizontalSpace(5),
                    Icon(
                      Icons.circle,
                      size: 5,
                      color: Colors.grey.shade700,
                    ),
                    horizontalSpace(5),
                    Text(
                      time,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ],
                ),

                //The post
                Text(
                  post,
                  maxLines: null,
                  style: const TextStyle(
                      color: Colors.black,
                    ),
                ),

                //If post has an image
                if (postWithImage)
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    height: 200,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          postWithImageUrl,
                          fit: BoxFit.cover,
                        )),
                  ),

                verticalSpace(10),

                //Reactions
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.comment,
                            size: 15,
                            color: Colors.grey.shade700,
                          ),
                          horizontalSpace(3),
                          Text(
                            comments,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ), //comments
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.retweet,
                            size: 15,
                            color: Colors.grey.shade700,
                          ),
                          horizontalSpace(3),
                          Text(
                            reposts,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ), //reposts
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.heart,
                            size: 15,
                            color: Colors.grey.shade700,
                          ),
                          horizontalSpace(3),
                          Text(
                            likes,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ), //likes
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Icon(Icons.bar_chart,
                              size: 15, color: Colors.grey.shade700),
                          Text(
                            impressions,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    horizontalSpace(5),//im//likes
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Icon(
                            Icons.bookmark_border,
                            size: 15,
                            color: Colors.grey.shade700,
                          ),
                        ],
                      ),
                    ), //impressions
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.ios_share_rounded,
                          size: 15,
                          color: Colors.grey.shade700,
                        ))
                  ],
                ) //likes reposts comments impressions
              ],
            ),
          ),
        ],
      ),
    );
  }
}
