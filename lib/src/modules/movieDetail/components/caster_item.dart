import 'package:flutter/material.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_styles.dart';

class CasterItem extends StatelessWidget {
  const CasterItem({Key? key, required this.size, required this.name})
      : super(key: key);

  final Size size;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, bottom: 4),
          child: Container(
            width: size.width / 4.5,
            height: size.width / 4.5,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AssetPath.avatar))),
          ),
        ),
        Text(
          name,
          style: TxtStyle.heading4SemiLight,
        )
      ],
    );
  }
}
