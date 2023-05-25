import 'package:bottom_field/container_decoration.dart';
import 'package:bottom_field/raqamlar_yigindisi.dart';
import 'package:bottom_field/text_field.dart';
import 'package:flutter/material.dart';

import 'gesture_detector_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue,
                  Colors.amber,
                ],
              ),
            ),
          ),
          title: const Text("Container page"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  border: Border.all(width: 10, color: Colors.red),
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.pink, Colors.blue])),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, ContainerPage.id);
                  },
                  child: const Text(
                    "Container xususiyatlari",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
                height: 300,
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.red),
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.blue, Colors.green])),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, GesturePage.id);
                    },
                    child: const Text(
                      "Gesture detector",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
            Container(
                height: 300,
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.red),
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.purple, Colors.amber])),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, TextFieldPage.id);
                    },
                    child: const Text(
                      "TextField",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
            Container(
                height: 300,
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.red),
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.limeAccent, Colors.blue])),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, RaqamPage.id);
                    },
                    child: const Text(
                      "Raqamlar yig'indisi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
            Container(
                height: 300,
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.red),
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.pinkAccent, Colors.cyan])),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "5-page",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
            Container(
                height: 300,
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.red),
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.yellow, Colors.deepPurple])),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "6-page",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
            Container(
                height: 300,
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.red),
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.red, Colors.deepPurpleAccent])),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "7-page",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
            Container(
                height: 300,
                decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.red),
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.black, Colors.white])),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "8-page",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
          ],
        ));
  }
}
