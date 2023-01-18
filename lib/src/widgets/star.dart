import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StarComponent extends StatelessWidget {
  const StarComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4),
      child: FaIcon(
        FontAwesomeIcons.solidStar,
        color: Colors.yellow,
        size: 10,
      ),
    );
  }
}
