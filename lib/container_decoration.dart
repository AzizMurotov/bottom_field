import 'dart:io';

import 'package:bottom_field/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  static const String id = "comtainer_decoration";

  const ContainerPage({Key? key}) : super(key: key);

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  void _androidDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("bosmang dedimko'"),
          content: const Text("baribir hech narsa bo'lmaydi"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Confirm"),
            ),
          ],
        );
      },
    );
  }

  void _IOSDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text("bosmang dedimko'"),
          content: const Text("baribir hech narsa bo'lmaydi"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Text(
                "Cancel",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Text(
                "Confirm",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ],
        );
      },
    );
  }

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
          "Container xususiyatlari",
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/messi.jpg"),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.green.withOpacity(0.8),
                  Colors.blue.withOpacity(0.8)
                ]),
          ),
          child: Center(
              child: OutlinedButton(
            onPressed: () {
              if (Platform.isAndroid) {
                _androidDialog();
              } else if (Platform.isIOS) {
                _IOSDialog();
              }
            },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 3,color: Colors.amber)
              ),
            child: const Text(
              "aslo bosmang!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          )),
        ),
      ),
    );
  }
}
