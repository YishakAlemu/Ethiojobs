import 'package:flutter/material.dart';
import 'home.dart';
//import 'package:google_fonts/google_fonts.dart';

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
