import 'package:flutter/material.dart';

class Avathar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double height;
  Avathar({
    required this.displayStatus,
    required this.displayImage,
    this.displayBorder = false,
    this.height = 50,
    this.width = 50,
  });
  @override
  Widget build(BuildContext context) {
    // Widget statusIndicator;
    // if (displayStatus == true) {
    //   statusIndicator = Positioned(
    //     bottom: 0,
    //     right: 1,
    //     child: Container(
    //       width: 15,
    //       height: 15,
    //       decoration: BoxDecoration(
    //         color: Colors.greenAccent,
    //         shape: BoxShape.circle,
    //         border: Border.all(
    //           width: 2,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //   );
    // } else {
    //   statusIndicator = SizedBox();
    // }
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 4, right: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(width: 3, color: Colors.blueAccent)
                : Border(),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              fit: BoxFit.cover,
              width: width,
              height: height,
            ),
          ),
        ),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
