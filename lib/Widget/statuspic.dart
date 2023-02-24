import 'package:flutter/material.dart';

class StatusPic extends StatelessWidget {
  final String Picture;
  final String like;
  final String comment;
  final String share;
  StatusPic(
      {required this.Picture,
      required this.like,
      required this.comment,
      required this.share});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 500,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage(Picture))),
        ),
        Container(
            child: Row(
          children: [
            const Icon(
              Icons.thumb_up_alt,
              color: Colors.blue,
              size: 20,
            ),
            Text(
              like,
              style: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              width: 240,
              alignment: Alignment.topRight,
              child: Text(
                comment,
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              share,
              style: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w600),
            )
          ],
        )),
      ],
    );
  }
}
