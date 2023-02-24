import 'package:flutter/material.dart';

class RoomLiveButton extends StatelessWidget {
  String imageShowing;

  RoomLiveButton({required this.imageShowing});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            imageShowing,
            width: 50,
            height: 50,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2)),
          ),
        ),
      ],
    );
  }
}
