import 'package:flutter/material.dart';
import 'config/app_colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'montserrat',
        scaffoldBackgroundColor: DarkTheme.darkerBackground,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: DarkTheme.white,
          displayColor: DarkTheme.white
        )
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 64, left: 24, right: 24),
              child: SizedBox(
                height: size.height / 10,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Text('Find Your Best \n Movie', style: TxtStyle.heading1SemiBold,
                  ),
                  CircleAvatar(
                    radius: size.height/24,
                    backgroundImage: ,
                  )
                ]),
              ),)
            ],
          ),
      ),
    );
  }
}
