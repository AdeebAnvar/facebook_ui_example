import 'package:flutter/material.dart';
import 'functionButton.dart';

class HeaderButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FunctionButton(
          buttonAction: () {},
          buttonColor: Colors.red,
          buttonIcon: Icons.video_call,
          buttonText: "Live",
        ),
        verticalDivider,
        FunctionButton(
          buttonAction: () {},
          buttonColor: Colors.green,
          buttonIcon: Icons.photo_library,
          buttonText: "Photo",
        ),
        verticalDivider,
        FunctionButton(
          buttonAction: () {},
          buttonColor: Colors.purple,
          buttonIcon: Icons.video_call,
          buttonText: "Room",
        ),
      ],
    );
  }
}
