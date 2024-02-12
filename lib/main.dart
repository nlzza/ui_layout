import 'package:flutter/material.dart';
import 'package:ui_layout/button.dart';
import 'package:ui_layout/description.dart';
import 'package:ui_layout/title.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              appTitle,
            ),
          ),
          surfaceTintColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                image: AssetImage("assets/images/lake.jpg"),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const TitleSection(
                  name: "Oeschinen Lake Campground",
                  location: "Kandersteg, Switzerland",
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const ButtonSection(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const DescriptionSection(
                  text:
                      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
