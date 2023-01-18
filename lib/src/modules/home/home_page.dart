import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/src/models/movie.dart';
import 'package:movies_app/src/modules/home/components/category_bar.dart';
import 'package:movies_app/src/modules/home/components/comming_soon.dart';
import 'package:movies_app/src/modules/home/components/header.dart';
import 'package:movies_app/src/modules/home/components/promo.dart';
import 'package:movies_app/src/modules/home/components/search_bar.dart';
import 'package:movies_app/src/modules/movieDetail/movie_detail_page.dart';
import 'package:movies_app/src/widgets/star.dart';

import '../../config/app_assets.dart';
import '../../config/app_styles.dart';
import '../selectCinema/select_cinema_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            HomeHeader(size: size),
            // Search bar
            SearchBar(size: size),
            // Category bar
            CategoryBar(size: size),
            BuildTitle('Now playing'),
            // Slider
            Silder(size),
            BuildTitle('Coming soon'),
            CommingSoon(),
            BuildTitle('Promo'),
            Promo(size: size),
            Promo(size: size),
            Promo(size: size),
          ],
        ),
      ),
      // appBar: AppBar(
      //   title: const Text('AppBar Demo'),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: const Icon(Icons.add_alert),
      //       tooltip: 'Show Snackbar',
      //       onPressed: () {
      //         ScaffoldMessenger.of(context).showSnackBar(
      //             const SnackBar(content: Text('This is a snackbar')));
      //       },
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.navigate_next),
      //       tooltip: 'Go to the next page',
      //       onPressed: () {
      //         Navigator.push(context, MaterialPageRoute<void>(
      //           builder: (BuildContext context) {
      //             return Scaffold(
      //               appBar: AppBar(
      //                 title: const Text('Next page'),
      //               ),
      //               body: const Center(
      //                 child: Text(
      //                   'This is the next page',
      //                   style: TextStyle(fontSize: 24),
      //                 ),
      //               ),
      //             );
      //           },
      //         ));
      //       },
      //     ),
      //   ],
      // ),
    );
  }

  CarouselSlider Silder(Size size) {
    return CarouselSlider(
      options: CarouselOptions(autoPlay: true, enlargeCenterPage: true),
      items: Movie.genresListCarousel().map((e) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SelectCinemaPage()
                ));
              },
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.only(left: 10, bottom: 24),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AssetPath.avatar))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 0, 0, 0).withOpacity(0.0),
                              Color.fromARGB(255, 0, 0, 0).withOpacity(0.8),
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: size.width,
                          padding: const EdgeInsets.only(bottom: 8, left: 8),
                          child: Text(
                            e.image.toString(),
                            style: TxtStyle.heading3SemiBold,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8, bottom: 8),
                          child: Row(
                            children: [
                              StarComponent(),
                              StarComponent(),
                              StarComponent(),
                              StarComponent(),
                              StarComponent(),
                              Text(
                                '(5.0)',
                                style: TxtStyle.heading4SemiBold,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Padding BuildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Text(
        content,
        style: TxtStyle.heading3SemiBold,
      ),
    );
  }
}
