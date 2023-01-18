import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/app_colors.dart';

class NextButton extends StatelessWidget {
  VoidCallback onTap;
  NextButton ({
    Key? key,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: ElevatedButton(
        onPressed: onTap,
        child: FaIcon(
          FontAwesomeIcons.arrowRight,
          color: DarkTheme.white,
          size: 30,
        ),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
            primary: DarkTheme.grey),
      ),
    );
  }
}
