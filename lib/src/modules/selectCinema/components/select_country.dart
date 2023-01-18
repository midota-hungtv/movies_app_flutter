

import 'package:flutter/material.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_styles.dart';

class SelectCountryWidget extends StatelessWidget {
  const SelectCountryWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      height: size.height / 14,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: DarkTheme.white)),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Select Your Country',
                  hintStyle: TxtStyle.heading4SemiBold,
                  icon: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: ImageIcon(
                      AssetImage(AssetPath.avatar),
                      color: DarkTheme.white,
                    ),
                  ),
                  border: InputBorder.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.keyboard_arrow_down,
              color: DarkTheme.white,
              size: 36,
            ),
          )
        ],
      ),
    );
  }
}
