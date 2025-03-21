import 'package:flutter/material.dart';
import 'home.dart'; // Import the home.dart file
import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(const Ethiojobs());
}

class Ethiojobs extends StatelessWidget {
  const Ethiojobs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(), // Use the HomeScreen widget from home.dart
    );
  }
}