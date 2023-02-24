import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widget/statusComment.dart';

class CommentCall extends StatelessWidget {
  const CommentCall({super.key});

  @override
  Widget build(BuildContext context) {
    return StatusComment(comment: "HAPPY BIRTHDAY MICHU");
  }
}
