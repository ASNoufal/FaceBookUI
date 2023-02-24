import 'package:flutter/material.dart';
import 'package:flutter_application_2/VariableAsset/Pics.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          nappu,
          width: 50,
          height: 50,
        ),
      ),
      title: TextField(
        decoration: InputDecoration(
            hintText: "what's on your mind",
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
    );
  }
}
