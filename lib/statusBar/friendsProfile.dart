import 'package:flutter/material.dart';

import 'package:flutter_application_2/VariableAsset/Pics.dart';
import 'package:flutter_application_2/Widget/PP.dart';

class FriendsProfile extends StatelessWidget {
  const FriendsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return PP(
      profilepp: aju,
      profilename: "Ajmal Mohd",
      updateTime: "3hrs",
    );
  }
}
