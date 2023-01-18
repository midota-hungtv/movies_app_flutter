import 'package:flutter/material.dart';
import 'package:movies_app/src/modules/movieDetail/movie_detail_page.dart';

import '../../../config/app_assets.dart';

class CommingSoon extends StatelessWidget {
  const CommingSoon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [1, 2, 3].map((e) {
          return Builder(builder: (BuildContext context) {
            return Expanded(
                child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => MovieDetailPage())));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: Image.asset(AssetPath.avatar),
              ),
            ));
          });
        }).toList(),
      ),
    );
  }
}
