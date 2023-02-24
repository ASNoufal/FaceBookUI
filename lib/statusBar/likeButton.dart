import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({super.key});
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
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey[700]),
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
                print("like button pressed");
              },
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonColor: Colors.grey,
              buttonText: 'Like'),
          VerticalDivider(
            thickness: 1,
          ),
          HeaderButton(
            buttonAction: () {
              print("comment button pressed");
            },
            buttonIcon: Icons.chat_bubble_outline,
            buttonColor: Colors.grey,
            buttonText: 'Comment',
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButton(
            buttonAction: () {
              print("Room button clicked");
            },
            buttonIcon: Icons.share,
            buttonColor: Colors.grey,
            buttonText: 'Share',
          ),
        ],
      ),
    );
  }
}
