import 'package:flutter/material.dart';

class StatusComment extends StatelessWidget {
  String comment;

  StatusComment({required this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      child: Text(
        comment,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
