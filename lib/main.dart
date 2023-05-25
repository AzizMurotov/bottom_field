import 'package:bottom_field/container_decoration.dart';
import 'package:bottom_field/gesture_detector_page.dart';
import 'package:bottom_field/raqamlar_yigindisi.dart';
import 'package:bottom_field/text_field.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id:(context) => const HomePage(),
        ContainerPage.id:(context) => const ContainerPage(),
        GesturePage.id:(context) => const GesturePage(),
        TextFieldPage.id:(context)=> const TextFieldPage(),
        RaqamPage.id:(context) => const RaqamPage(),
      },
    );
  }
}
