import 'package:flutter/material.dart';

import '../movie_detail_page.dart';
import 'caster_item.dart';

class CastBar extends StatelessWidget {
  const CastBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: [1, 2, 3, 4]
              .map((e) => Builder(builder: (context) {
                    return CasterItem(size: size, name: 'Hung');
                  }))
              .toList()),
    );
  }
}
