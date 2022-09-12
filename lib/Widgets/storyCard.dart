import 'package:facebook/Widgets/CircularButton.dart';
import 'package:facebook/Widgets/avathar.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avathar;
  final bool createStoryStatus;
  final bool displayBorder;
  StoryCard({
    required this.labelText,
    required this.story,
    required this.avathar,
    this.createStoryStatus = false,
    this.displayBorder = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        bottom: 5,
        top: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    buttonAction: () {},
                    iconColor: Colors.blue)
                : Avathar(
                    displayStatus: false,
                    displayImage: avathar,
                    displayBorder: displayBorder,
                  ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Text(
              labelText != null ? labelText : "N/A",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
