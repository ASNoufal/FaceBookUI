import 'package:flutter/material.dart';
import 'package:flutter_application_2/VariableAsset/Pics.dart';
import 'package:flutter_application_2/Widget/PP.dart';

import 'package:flutter_application_2/Widget/statuspic.dart';
import 'package:flutter_application_2/statusBar/CommentCall.dart';
import 'package:flutter_application_2/statusBar/friendsProfile.dart';
import 'package:flutter_application_2/statusBar/likeButton.dart';
import 'package:flutter_application_2/statusBar/livebutton.dart';
import 'package:flutter_application_2/statusBar/profilePicture.dart';
import 'package:flutter_application_2/statusBar/roomScrach.dart';
import 'package:flutter_application_2/statusBar/statusBar.dart';

import 'Widget/appBarButton.dart';

class faceBook extends StatelessWidget {
  const faceBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Facebook',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w900, color: Colors.blue),
          ),
          actions: [
            AppBarButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print('search button');
              },
            ),
            AppBarButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print('chat button pressed');
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            const ProfilePicture(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            const LiveButton(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            const RoomScrach(),
            Divider(thickness: 10, color: Colors.grey[300]),
            const StatusBar(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            const FriendsProfile(),
            const CommentCall(),
            StatusPic(
              Picture: michu,
              like: "3k",
              comment: "100 Comments",
              share: "10 Shares",
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            const LikeButton(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            PP(
                profilepp: eldo,
                profilename: "Ijas Ibrahim",
                updateTime: "1hrs"),
            StatusPic(
              Picture: nappu,
              like: "220",
              comment: "26 Comments",
              share: "5 Shares",
            ),
            LikeButton(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            PP(
                profilepp: shinaz,
                profilename: "Shinaz Sirajudeen",
                updateTime: "56min"),
            StatusPic(
              Picture: aju,
              like: "90",
              comment: "26 Comments",
              share: "2 Shares",
            ),
            LikeButton()
          ],
        ),
      ),
    );
  }
}
