import 'package:flutter/material.dart';
import 'package:flutter_application_2/VariableAsset/Pics.dart';
import 'package:flutter_application_2/Widget/friendsStaus.dart';
import 'package:flutter_application_2/Widget/storyCard.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            storyImage: nappu,
            titles: "Create story",
          ),
          FriendStatus(
            name: "Ajmal Mohd",
            picture: michu,
            profilePicture: aju,
          ),
          FriendStatus(
            name: "Mish Al Salim",
            picture: lm10,
            profilePicture: mikku,
          ),
          FriendStatus(
            name: "ijas Ebrahim",
            picture: aju,
            profilePicture: eldo,
          ),
          FriendStatus(
            name: "Shinaz",
            picture: sinaz,
            profilePicture: shinaz,
          ),
        ],
      ),
    );
  }
}
