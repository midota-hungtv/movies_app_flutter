import 'package:flutter/cupertino.dart';

import '../../../config/app_styles.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 24, top: 8),
          child: Text(
            'Graph Break The Internet',
            style: TxtStyle.heading2SemiBold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 24, top: 4),
          child: Text('FX Sudirman XXI', style: TxtStyle.heading4SemiLight),
        ),
      ],
    );
  }
}
