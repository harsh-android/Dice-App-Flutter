import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var i1 = 1;
    var i2 = 1;
    var random = Random();
    i1 = random.nextInt(6) + 1;
    i2 = random.nextInt(6) + 1;
    var total = i1 + i2;
    return Scaffold(
      body: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Total Count : $total",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Spacer(flex: 2),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(child: Image.network("assets/images/$i1.png")),
                Expanded(child: Image.network("assets/images/$i2.png")),
              ],
            ),
          ),
          Spacer(flex: 2),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.network("assets/images/Button.png"),
                  Text(
                    "Roll Dice",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
