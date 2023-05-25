import 'package:flutter/material.dart';

import 'home_page.dart';

class RaqamPage extends StatefulWidget {
  static const String id = "raqam_page";

  const RaqamPage({Key? key}) : super(key: key);

  @override
  State<RaqamPage> createState() => _RaqamPageState();
}

class _RaqamPageState extends State<RaqamPage> {
  String raqam = "";
  int almashtir = 0;
  String chiqar = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomePage.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
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
        title: const Text("Text Field Page"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.cyan,
              ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    raqam = value;
                  });
                },
                style: const TextStyle(fontSize: 18, color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "  0",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                almashtir = int.parse(raqam);
                int a = 0;
                int sum = 0;
                while (almashtir > 0) {
                  a = almashtir % 10;
                  almashtir=almashtir~/10;
                  sum += a;
                }
               setState(() {
                 chiqar = sum.toString();
               });
              },
              child: Text("raqamlar yig'indisi"),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Text(
                  "raqamlar yig'indisi: $chiqar",
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
