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
      child: Container(
        
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
                width: 270,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.11),
                      blurRadius: 20,
                      spreadRadius: 0.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    contentPadding: EdgeInsets.all(13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color.fromARGB(255, 107, 101, 101)),
                    ),
                  ),
                ),
              ),
            ),
            Align(
  alignment: Alignment(0.87, 0.45),
  child: ElevatedButton(
    onPressed: () {
      print('Search icon tapped!'); // Your action here
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white, // Keep button white
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners
        side: BorderSide(color: Color.fromARGB(255, 107, 101, 101), width: 0.5),
      ),
      padding: EdgeInsets.zero, // Remove padding to fit the container
      elevation: 0, // Add a shadow effect
    ),
    child: Container(
      width: 40,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: SvgPicture.asset(
          'assets/search20.svg',
          width: 30,
          height: 20,
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
