import 'package:flutter/material.dart';
import 'parent_widget.dart';

void main() {
  runApp(const Ethiojobs());
}

class Ethiojobs extends StatelessWidget {
  const Ethiojobs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParentWidget(), // Use ParentWidget to manage navigation and persistent AppBar
    );
  }
}