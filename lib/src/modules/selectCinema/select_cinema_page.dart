import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/src/config/app_assets.dart';
import 'package:movies_app/src/config/app_colors.dart';
import 'package:movies_app/src/config/app_styles.dart';

import '../../models/movie.dart';
import 'components/custom_header.dart';
import 'components/next_button.dart';
import 'components/select_country.dart';
import 'select_seat_page.dart';

class SelectCinemaPage extends StatelessWidget {
  const SelectCinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomHeader(size: size, content: 'Ralph Breaks the\nInternet'),
                SelectCountryWidget(size: size),
                BuildTitle('Choose Date'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: days
                        .map((e) => Builder(builder: (context) {
                              return buildDateWidget(size, e);
                            }))
                        .toList(),
                  ),
                ),
                BuildTitle('Central Park CGV'),
                Container(
                  margin: EdgeInsets.only(top: 8, bottom: 16),
                  height: size.height / 15,
                  child: ListView.builder(
                    itemBuilder: (context, index) => buildTimeWidget(size, index),
                    itemCount: times.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                BuildTitle('FX Sudirman XXI'),
                Container(
                  margin: EdgeInsets.only(top: 8, bottom: 16),
                  height: size.height / 15,
                  child: ListView.builder(
                    itemBuilder: (context, index) => buildTimeWidget(size, index),
                    itemCount: times.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                BuildTitle('Kelapa Gading IMAX'),
                Container(
                  margin: EdgeInsets.only(top: 8, bottom: 16),
                  height: size.height / 15,
                  child: ListView.builder(
                    itemBuilder: (context, index) => buildTimeWidget(size, index),
                    itemCount: times.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                NextButton(onTap: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SelectSeatPage()));
                })),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildDateWidget(Size size, String e) {
    return Container(
      height: size.height / 8,
      width: size.width / 5,
      decoration: BoxDecoration(
          color: _getColor(dateStates[days.indexOf(e)]),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            e.toString(),
            style: TxtStyle.heading3SemiBold,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              (20 + days.indexOf(e)).toString(),
              style: TxtStyle.heading3SemiBold,
            ),
          )
        ],
      ),
    );
  }

  Container buildTimeWidget(Size size, int index) {
    return Container(
      margin: EdgeInsets.only(left: 24),
      width: size.width / 4,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: _getColor(timeStates_1[index]),
          borderRadius: BorderRadius.circular(14)),
      child: Text(
        times[index],
        style: TxtStyle.heading3SemiBold,
      ),
    );
  }

  // Color _getColor(TicketStates state) {
  //   print(state);
  //   switch (state) {
  //     case TicketStates.idle:
  //       {
  //         return DarkTheme.darkerBackgroundLight;
  //       }
  //     case TicketStates.active:
  //       {
  //         return DarkTheme.blueMain;
  //       }
  //     case TicketStates.busy:
  //       {
  //         return Color.fromARGB(255, 154, 154, 154);
  //       }
  //     default:
  //       {
  //         return DarkTheme.darkerBackgroundLight;
  //       }
  //   }
  // }

  Color _getColor(int state) {
    switch (state) {
      case TicketStates.idle:
        {
          return DarkTheme.darkerBackgroundLight;
        }
      case TicketStates.active:
        {
          return DarkTheme.blueMain;
        }
      case TicketStates.busy:
        {
          return Color.fromARGB(255, 154, 154, 154);
        }
      default:
        {
          return DarkTheme.darkerBackgroundLight;
        }
    }
  }

  Container BuildTitle(String content) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Text(
        content,
        style: TxtStyle.heading2SemiBold,
      ),
    );
  }
}
