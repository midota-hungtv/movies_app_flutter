import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/src/config/app_colors.dart';
import 'package:movies_app/src/modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Show time and icon wifi on mobile with color and theme
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white, statusBarBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'montserrat',
          scaffoldBackgroundColor: DarkTheme.darkerBackground,
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: DarkTheme.white, displayColor: DarkTheme.white)),
      home: HomePage(),
    );
  }
}
