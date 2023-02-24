import 'package:flutter_application_2/Widget/roomLiveButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/VariableAsset/Pics.dart';
import 'package:flutter_application_2/statusBar/livebutton.dart';

class RoomScrach extends StatelessWidget {
  const RoomScrach({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(1),
      height: 50,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        OutlinedButton.icon(
          onPressed: () {
            print("click room button");
          },
          icon: Icon(
            Icons.duo,
            color: Colors.indigo,
          ),
          label: Text("Create \nRoom"),
          style: OutlinedButton.styleFrom(
            side:
                BorderSide(width: 2, color: Color.fromARGB(255, 172, 208, 238)),
            shape: StadiumBorder(),
          ),
        ),
        RoomLiveButton(imageShowing: nappu),
        RoomLiveButton(imageShowing: michu),
        RoomLiveButton(imageShowing: aju),
        RoomLiveButton(imageShowing: ijas),
        RoomLiveButton(imageShowing: sinaz),
        RoomLiveButton(imageShowing: napps),
        RoomLiveButton(imageShowing: michu),
        RoomLiveButton(imageShowing: aju),
        RoomLiveButton(imageShowing: ijas),
        RoomLiveButton(imageShowing: sinaz),
        RoomLiveButton(imageShowing: napps),
      ]),
    );
  }
}
