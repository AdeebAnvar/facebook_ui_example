import 'dart:ui';

import 'package:facebook/Widgets/avathar.dart';
import 'package:facebook/Widgets/blueTick.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/sections/functionButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    this.postTitle = "",
    required this.postImage,
    this.showBlueTick = false,
    required this.commentCount,
    required this.likeCount,
    required this.shareCount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footterSection(),
          functionSection(),
        ],
      ),
    );
  }

  Widget functionSection() {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FunctionButton(
            buttonAction: () {},
            buttonColor: Colors.grey,
            buttonIcon: Icons.thumb_up_alt_outlined,
            buttonText: "Like",
            labelColor: Colors.grey),
        verticalDivider,
        FunctionButton(
            buttonAction: () {},
            buttonColor: Colors.grey,
            buttonIcon: Icons.comment,
            buttonText: "comment",
            labelColor: Colors.grey),
        verticalDivider,
        FunctionButton(
            buttonAction: () {},
            buttonColor: Colors.grey,
            buttonIcon: Icons.share,
            buttonText: "Share",
            labelColor: Colors.grey),
      ],
    );
  }

  Widget footterSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(width: 5),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(width: 5),
                displayText(label: "Comments"),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: "shares"),
                SizedBox(width: 10),
                Avathar(
                    displayStatus: false,
                    displayImage: avatar,
                    width: 20,
                    height: 20),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        postTitle == null ? "" : postTitle,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avathar(displayStatus: false, displayImage: avatar),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width: 10),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(width: 5),
          Icon(Icons.public, size: 10),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_horiz_rounded),
      ),
    );
  }
}
