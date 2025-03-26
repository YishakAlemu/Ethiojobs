import 'package:flutter/material.dart';
import 'home.dart'; // Import the home.dart file
void main() {
  runApp(const Ethiojobs());
}



class Ethiojobs extends StatelessWidget {
  const Ethiojobs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(), // Use the HomeScreen widget from home.dart
    );
  }
}