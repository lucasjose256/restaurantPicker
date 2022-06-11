import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> reastaurant = [
    'Fedalto',
    'Laçador',
    'Abaré',
    'Madaloso',
    'Subway',
    'Pizza Hut',
  ];
  int currentIndex;
  void randomNumber() {
    final random = Random();
    final index = random.nextInt(reastaurant.length);

    setState(() {
      currentIndex = index;
      if (currentIndex == reastaurant.length) {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade300,
        body: Center(
            child: Column(
          //Ultilizado para alinhar uma widget
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Whare do you want to eat?'),
            const SizedBox(
              height: 10,
            ),
            if (currentIndex != null)
              Text(
                reastaurant[currentIndex],
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            const SizedBox(
              height: 10,
            ),
            // ignore: deprecated_member_use
            MaterialButton(
              onPressed: () {
                randomNumber();
              },
              color: Colors.red,
              elevation: 20,
              child: const Text(
                'Play',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            )
          ],
        )),
      ),
    );
  }
}
