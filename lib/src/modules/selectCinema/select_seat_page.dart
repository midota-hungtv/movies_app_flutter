import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/src/config/app_colors.dart';
import 'package:movies_app/src/config/app_styles.dart';

import '../../models/movie.dart';
import 'components/arrow_back_button.dart';
import 'components/movie_title.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ArrowBackButton(),
          MovieTitle(),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildSeatStatusBar(
                    color: DarkTheme.darkerBackgroundLight,
                    content: 'Available'),
                buildSeatStatusBar(color: DarkTheme.grey, content: 'Booked'),
                buildSeatStatusBar(
                    color: DarkTheme.blueMain, content: 'Your seat'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: seats
                    .map((row) => Builder(builder: ((context) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: seatNumbers
                                .map((number) => Builder(builder: (context) {
                                      return ToggleButton(child: '$row$number');
                                    }))
                                .toList(),
                          );
                        })))
                    .toList(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 16),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1.0, color: DarkTheme.white))),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Screen',
              style: TxtStyle.heading3SemiBold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1.0, color: DarkTheme.white))),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, bottom: 16, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style: TxtStyle.heading4SemiLight,
                    ),
                    Text(
                      '150 000 VND',
                      style: TxtStyle.heading3SemiBold,
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: size.height / 16,
                    width: size.width / 3,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: DarkTheme.blueMain,
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      'Book Ticket',
                      style: TxtStyle.heading3SemiBold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

  Row buildSeatStatusBar({required Color color, required String content}) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(4)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            content,
            style: TxtStyle.heading4SemiBold,
          ),
        ),
      ],
    );
  }
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({Key? key, required this.child}) : super(key: key);

  final String child;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  int _ticketStates = TicketStates.idle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: GestureDetector(
        onTap: (() {
          setState(() {
            _ticketStates = _ticketStates == TicketStates.idle
                ? TicketStates.active
                : TicketStates.idle;
          });
        }),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: _ticketStates == TicketStates.idle
                  ? DarkTheme.grey
                  : DarkTheme.blueMain),
          child: Text(
            widget.child.toString(),
            style: TxtStyle.heading3SemiBold,
          ),
        ),
      ),
    );
  }
}
