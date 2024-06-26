// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruit List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FruitList(),
    );
  }
}

class FruitList extends StatelessWidget {
  final List<Map<String, dynamic>> fruits = [
    {"emoji": "🍎", "name": "Apple", "color": Colors.red},
    {"emoji": "🍇", "name": "Grapes", "color": Colors.purpleAccent.shade100},
    {"emoji": "🍒", "name": "Cherry", "color": Colors.purple},
    {"emoji": "🍓", "name": "Strawberry", "color": Colors.red},
    {"emoji": "🥭", "name": "Mango", "color": Colors.orange},
    {"emoji": "🍍", "name": "Pineapple", "color": Colors.green},
    {"emoji": "🍋", "name": "Lemon", "color": Colors.yellow.shade700},
    {"emoji": "🍉", "name": "Watermelon", "color": Colors.lightGreen.shade400},
    {"emoji": "🥥", "name": "Coconut", "color": Colors.brown},


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\u{1F6CD}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(width: 6),
            Text(
              'List of Fruits',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.teal.shade300,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(35.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                fruits[index]['emoji'],
                style: const TextStyle(fontSize: 33),
              ),
              title: Text(
                fruits[index]['name'],
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: fruits[index]['color'],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
