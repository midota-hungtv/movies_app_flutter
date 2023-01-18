import 'package:flutter/material.dart';
import 'package:movies_app/src/config/app_assets.dart';
import 'package:movies_app/src/config/app_colors.dart';
import 'package:movies_app/src/config/app_styles.dart';
import 'package:movies_app/src/widgets/star.dart';

import 'components/arrow_back.dart';
import 'components/background_widget.dart';
import 'components/cast_bar.dart';
import 'components/trailer_bar.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //     leading: InkWell(
      //   onTap: () {
      //     Navigator.pop(context);
      //   },
      //   child: Icon(Icons.home),
      // )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              children: [
                BackgroundWidget(size: size),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color.fromARGB(255, 0, 0, 0).withOpacity(0.0),
                        Color.fromARGB(255, 0, 0, 0).withOpacity(0.8),
                      ])),
                )
              ],
            ),
            Container(
              height: size.height / 3.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromARGB(255, 0, 0, 0).withOpacity(0.0),
                    Color.fromARGB(255, 0, 0, 0).withOpacity(0.8),
                  ])),
            ),
            ArrowBack(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24, top: size.height / 4.5),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width / 2.5,
                        child: Image.asset(
                          AssetPath.avatar,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 8, bottom: 8),
                              width: size.width,
                              child: Text(
                                'Ralph Break The Internet',
                                style: TxtStyle.heading3SemiBold,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8, bottom: 8),
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
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8, bottom: 8),
                              width: size.width,
                              child: Text(
                                'Action & adventure, Comedy',
                                style: TxtStyle.heading4SemiLight,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 8, bottom: 8),
                              width: size.width,
                              child: Text(
                                '1h41min',
                                style: TxtStyle.heading4SemiLight,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height - 120,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        alignment: Alignment.center,
                        width: size.width,
                        child: TabBar(
                          tabs: [
                            Tab(text: 'About Movie'),
                            Tab(text: 'Review'),
                          ],
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: TxtStyle.heading3SemiBold,
                          unselectedLabelStyle: TxtStyle.heading3SemiBold,
                          indicatorColor: DarkTheme.white,
                        ),
                      ),
                      Expanded(
                        child:
                            TabBarView(controller: _tabController, children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              buildTitle('Synopsis'),
                              Padding(
                                padding: EdgeInsets.only(left: 24),
                                child: Text(
                                  'Example Content',
                                  style: TxtStyle.heading4SemiLight,
                                ),
                              ),
                              buildTitle('Cast & Crew'),
                              CastBar(size: size),
                              buildTitle('Trailer & song'),
                              TrailerBar()
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text('Review Page'),
                          )
                        ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Text(
        content,
        style: TxtStyle.heading2SemiBold,
      ),
    );
  }
}
