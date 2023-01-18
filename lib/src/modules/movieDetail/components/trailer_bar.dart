import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_colors.dart';

class TrailerBar extends StatelessWidget {
  const TrailerBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [1, 2, 3]
            .map((e) => Builder(builder: (context) {
                  return Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Stack(
                      children: [
                        Container(
                          height: 160,
                          width: 260,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(AssetPath.avatar),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 160,
                          width: 260,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(87, 41, 39, 39)),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Play something
                          },
                          child: SizedBox(
                            height: 160,
                            width: 260,
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 56),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: DarkTheme.blueMain),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(FontAwesomeIcons.play,
                                      color: DarkTheme.white),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }))
            .toList(),
      ),
    );
  }
}
