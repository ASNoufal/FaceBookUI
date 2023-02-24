import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color buttonColor;

  AppBarButton(
      {required this.buttonIcon,
      required this.buttonAction,
      this.buttonColor = Colors.black});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 231, 229, 229),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(buttonIcon),
        color: buttonColor,
      ),
    );
  }
}
