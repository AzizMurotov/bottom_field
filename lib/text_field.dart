import 'package:flutter/material.dart';

import 'home_page.dart';

class TextFieldPage extends StatefulWidget {
  static const String id = "text_field";

  const TextFieldPage({Key? key}) : super(key: key);

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  String name = "";
  String phoneNumber = "";
  String containerPhoneNumber = "";
  String name1 = "";

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
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [Colors.pinkAccent, Colors.cyan])),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.blue),
              width: double.infinity,
              height: 45,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    name1 = value;
                  });
                },
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                    hintText: "name",
                    hintStyle: TextStyle(color: Colors.purple),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.account_circle,
                      color: Colors.purple,
                    )),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 45,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: TextField(
                onChanged: (value1) {
                  setState(() {
                    phoneNumber = value1;
                  });
                },
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                    hintText: "surname",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.purple),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.supervised_user_circle_rounded,
                      color: Colors.purple,
                    )),
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  name = name1;
                });
              },
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    width: 1,
                    color: Colors.amber,
                  )),
              child: const Text(
                "print",
                style: TextStyle(fontSize: 20),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  containerPhoneNumber = phoneNumber;
                });
              },
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                width: 1,
                color: Colors.amber,
              )),
              child: const Text(
                "print",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 45,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: Text(
                  name,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: Text(
                  containerPhoneNumber,
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
