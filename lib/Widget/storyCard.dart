import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widget/appBarButton.dart';

class StoryCard extends StatelessWidget {
  String storyImage;
  String titles;

  StoryCard({
    required this.storyImage,
    required this.titles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      height: 100,
      width: 140,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(storyImage), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Positioned(
            top: 2,
            left: 2,
            child: AppBarButton(
              buttonColor: Colors.blue,
              buttonIcon: Icons.add,
              buttonAction: () {
                print("add profile picture");
              },
            ),
          ),
          Positioned(
              bottom: 10,
              left: 15,
              child: Text(
                titles,
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
