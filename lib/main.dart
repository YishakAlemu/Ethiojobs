import 'package:flutter/material.dart';
import 'parent_widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_quill/flutter_quill.dart'; 


void main() {
  runApp(const Ethiojobs());
}

class Ethiojobs extends StatelessWidget {
  const Ethiojobs({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
    localizationsDelegates: const [
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    FlutterQuillLocalizations.delegate,
  ],
      debugShowCheckedModeBanner: false,
      home: ParentWidget(), // Use ParentWidget to manage navigation and persistent AppBar
    );
  }
}