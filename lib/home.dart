import 'package:facebook/Widgets/CircularButton.dart';
import 'package:facebook/Widgets/postCard.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/sections/functionButton.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSections.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:flutter/material.dart';

import 'sections/storySection.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider() {
      return Divider(
        thickness: 1,
        color: Colors.grey[300],
      );
    }

    Widget thickDivider() {
      return Divider(
        thickness: 10,
        color: Colors.grey[300],
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            CircularButton(buttonIcon: Icons.search, buttonAction: () {}),
            CircularButton(buttonIcon: Icons.chat, buttonAction: () {}),
          ],
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider(),
            HeaderButtonSection(),
            thickDivider(),
            RoomSection(),
            thickDivider(),
            StorySection(),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
            PostCard(
              avatar: vjseth,
              name: "Vijay Sethupati",
              publishedAt: "5h",
              postImage: nintySix,
              postTitle: "hii",
              showBlueTick: true,
              commentCount: "5k",
              likeCount: "10k",
              shareCount: "450",
            ),
            thickDivider(),
          ],
        ),
      ),
    );
  }
}
