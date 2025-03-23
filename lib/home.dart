// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Prevents keyboard from covering input
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/ethio_logo.png',
              height: 110,
            ),
            SizedBox(width: 10),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        width: 200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(title: const Text('Find jobs'), onTap: () => Navigator.pop(context)),
            ListTile(title: const Text('Find companies'), onTap: () => Navigator.pop(context)),
            ListTile(title: const Text('Blog'), onTap: () => Navigator.pop(context)),
            ListTile(title: const Text('Contact us'), onTap: () => Navigator.pop(context)),
            ListTile(title: const Text('Log in'), onTap: () => Navigator.pop(context)),
            ListTile(title: const Text('Sign up'), onTap: () => Navigator.pop(context)),
            ListTile(title: const Text('Employers, are you recruiting?'), onTap: () => Navigator.pop(context)),
          ],
        ),
      ),
      body: myLayoutWidget(),
    );
  }

  Widget myLayoutWidget() {
    return SingleChildScrollView(
      child: SizedBox(
        
        height: 700, // Ensure space for content
        child: Stack(
          children: [
            const Align(
              alignment: Alignment(-0.55, -0.8),
              child: Text(
                "Ethiojobs",
                style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 72, 193, 156),
                ),
              ),
            ),
            const Align(
              alignment: Alignment(-0.55, -0.63),
              child: Text(
                "Find top employers",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.55, -0.2),
              child: ElevatedButton(
                onPressed: () {
                  print('Search icon tapped!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 72, 193, 156),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                  textStyle: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                child: const Text('Get Started', style: TextStyle(color: Colors.white)),
              ),
            ),
            Align(
  alignment: Alignment(-0.6, 0.45),
  child: Container(
    width: 282,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0),
          blurRadius: 0,
          spreadRadius: 0.0,
        ),
      ],
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Job title, company or industry", // Placeholder text
        hintStyle: TextStyle(color: Colors.black, fontSize: 16), // Style of the placeholder
        //filled: true,
        //fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(15),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: const Color.fromARGB(255, 206, 202, 229) ,width:1), // Border when not focused
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: const Color.fromARGB(255, 206, 202, 229), width: 1), // Border when focused
        ),
      ),
    ),
  ),
),


   Align(
  alignment: Alignment(0.87, 0.45),
  child: ElevatedButton(
    onPressed: () {
      print('Search icon tapped!'); 
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: const Color.fromARGB(255, 206, 202, 229), width: 1),
      ),
      padding: EdgeInsets.zero, // Ensure no extra padding
      elevation: 0,
      minimumSize: Size(0, 0), // Prevent button from forcing width
    ),
    child: SizedBox( 
      width: 52.5, //  Force container width here
      height: 53.5, 
      child: Center(
        child: SvgPicture.asset(
          'assets/search20.svg',
          width: 25, // Adjust icon size separately
          height: 28, 
          fit: BoxFit.contain,
        ),
      ),
    ),
  ),
),



          ],
        ),
      ),
    );
    
  }
}
