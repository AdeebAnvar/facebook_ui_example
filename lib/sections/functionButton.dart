import 'package:flutter/material.dart';

class FunctionButton extends StatelessWidget {
  final String buttonText;
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color buttonColor;
  final Color labelColor;
  FunctionButton({
    required this.buttonAction,
    required this.buttonColor,
    required this.buttonIcon,
    required this.buttonText,
    this.labelColor = Colors.black,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
            onPressed: buttonAction,
            icon: Icon(buttonIcon, color: buttonColor),
            label: Text(
              buttonText,
              style: TextStyle(color: labelColor),
            ),
          ),
        ],
      ),
    );
  }
}
