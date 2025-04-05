import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home.dart';
import 'login.dart'; 
import 'signup.dart';
import 'login.dart'; 
import 'parent_widget.dart';
class Profilepage extends StatefulWidget {
  const Profilepage({super.key});
  

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  bool _isExpanded = false;

  void _toggleContainer() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color:Colors.amber,
  width: 300,
  child: Column(
    children: [
      AnimatedContainer(
        duration: Duration(milliseconds: 300), // Animation duration
        curve: Curves.easeInOut,
        height: _isExpanded ? 200 : 50, // Change height based on state
        color: Colors.blue,
        child: Column(
          children: [
            IconButton(
              icon: Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
                color: Colors.white,
              ),
              onPressed: _toggleContainer,
            ),
            if (_isExpanded) // Show content only when expanded
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Expanded Content',
                  style: TextStyle(color: Colors.white),
                ),
              ),
          ],
        ),
      ),
    ],
  ),
),
  )
    );
  }
}
