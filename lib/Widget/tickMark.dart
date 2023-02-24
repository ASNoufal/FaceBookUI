import 'package:flutter/material.dart';

class TickMark extends StatelessWidget {
  const TickMark({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.check_circle,
      size: 18,
      color: Color.fromARGB(255, 82, 141, 242),
    );
  }
}
