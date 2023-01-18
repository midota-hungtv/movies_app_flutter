import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: size.height / 15,
            decoration: BoxDecoration(
                color: DarkTheme.darkerBackgroundLight,
                borderRadius: BorderRadius.circular(22)),
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 24, right: 12),
                    child: FaIcon(
                      FontAwesomeIcons.searchengin,
                      color: DarkTheme.white,
                    )),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Movie',
                      hintStyle: TxtStyle.heading3SemiBold,
                      border: InputBorder.none),
                ))
              ],
            ),
          )),
          Container(
            margin: EdgeInsets.only(left: 16),
            width: size.height / 15,
            height: size.height / 15,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff3D5AF9),
                  Color(0xFF0026FB),
                ]),
                borderRadius: BorderRadius.circular(14)),
            child: FaIcon(
              FontAwesomeIcons.sliders,
              color: DarkTheme.white,
            ),
          )
        ],
      ),
    );
  }
}
