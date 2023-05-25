import 'package:flutter/material.dart';

import 'container_decoration.dart';
import 'home_page.dart';

class GesturePage extends StatefulWidget {
  static const String id = "gesture_detector_page";

  const GesturePage({Key? key}) : super(key: key);

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [Colors.pink, Colors.blue])),
        ),
        title: const Text(
          "Gesture detector",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomePage.id);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("Azizbek Murotov");
          },
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(width: 10, color: Colors.red),
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [Colors.pink, Colors.blue],
              ),
            ),
            child: const Center(
              child: Text(
                "Azizbek Molotov",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            )
          ),
        ),
      ),
    );
  }
}
