import 'package:flutter/material.dart';

class LiveButton extends StatelessWidget {
  const LiveButton({super.key});
  Widget HeaderButton({
    required IconData buttonIcon,
    required String buttonText,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HeaderButton(
            buttonAction: () {
              print("live button pressed");
            },
            buttonIcon: Icons.voice_chat,
            buttonColor: Colors.red,
            buttonText: 'Live',
          ),
          VerticalDivider(
            thickness: 1,
          ),
          HeaderButton(
            buttonAction: () {
              print("Photo button pressed");
            },
            buttonIcon: Icons.crop_original,
            buttonColor: Colors.green,
            buttonText: 'Photo',
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButton(
            buttonAction: () {
              print("Room button clicked");
            },
            buttonIcon: Icons.duo,
            buttonColor: Colors.indigo,
            buttonText: 'Room',
          ),
        ],
      ),
    );
  }
}
