import 'package:facebook/Widgets/storyCard.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
              avathar: dq,
              labelText: "Add to your story",
              story: dq,
              createStoryStatus: true),
          StoryCard(
              avathar: biju,
              labelText: "Biju Menon",
              story: virus,
              displayBorder: true),
          StoryCard(
              avathar: mammootty,
              labelText: "Mammootty",
              story: darbar,
              displayBorder: true),
          StoryCard(
              avathar: mohanlal,
              labelText: "Mohanlal",
              story: puliMurugan,
              displayBorder: true),
          StoryCard(
              avathar: pinaray,
              labelText: "Pinaray Vijayan",
              story: cpi,
              displayBorder: true),
          StoryCard(
              avathar: pranav,
              labelText: "pranav Mohanlal",
              story: underworld,
              displayBorder: true),
          StoryCard(
              avathar: prithvi,
              labelText: "RajPrithvi",
              story: kaduva,
              displayBorder: true),
          StoryCard(
              avathar: rahul,
              labelText: "Rahul Gandhi",
              story: cong,
              displayBorder: true),
          StoryCard(
              avathar: sharrokhkhan,
              labelText: "Sharookhkhan",
              story: darbar,
              displayBorder: true),
          StoryCard(
              avathar: vj, labelText: "Vijay", story: don, displayBorder: true),
          StoryCard(
              avathar: vjseth,
              labelText: "Vijay Sethupathi",
              story: nintySix,
              displayBorder: true),
        ],
      ),
    );
  }
}
