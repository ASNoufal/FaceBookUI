import 'dart:ui';

import 'package:flutter/material.dart';

import '../VariableAsset/Pics.dart';

class FriendStatus extends StatelessWidget {
  String name;
  String picture;
  String profilePicture;

  FriendStatus({
    required this.name,
    required this.picture,
    required this.profilePicture,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      height: 100,
      width: 140,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(picture), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 4),
            width: 56,
            height: 58,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueAccent, width: 4),
            ),
          ),
          Positioned(
            top: 4,
            left: 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                profilePicture,
                width: 50,
                height: 50,
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 15,
              child: Text(
                name,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ))
        ],
      ),
    );
  }
}
