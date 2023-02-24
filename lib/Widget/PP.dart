import 'package:flutter/material.dart';
import 'package:flutter_application_2/VariableAsset/Pics.dart';
import 'package:flutter_application_2/Widget/tickMark.dart';

class PP extends StatelessWidget {
  String profilepp;
  String profilename;
  String updateTime;
  PP(
      {required this.profilepp,
      required this.profilename,
      required this.updateTime});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            profilepp,
            width: 50,
            height: 50,
          ),
        ),
        title: Row(
          children: [
            Text(
              profilename,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 7),
            const TickMark()
          ],
        ),
        subtitle: Row(
          children: [
            Text(updateTime),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.public,
              size: 16,
              color: Colors.grey[700],
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            print("go to settings");
          },
          icon: const Icon(Icons.more_horiz),
        ),
      ),
    );
    ;
  }
}
