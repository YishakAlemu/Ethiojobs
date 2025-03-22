// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Image in the AppBar
            Image.asset(
              'assets/ethio_logo.png', // Adjust the path to your image
              height: 20, // Set the desired height
            ),
            SizedBox(width: 10), // Add space between the image and title
           
          ],
        ),
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
            ListTile(
              title: const Text('Find jobs'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Find companies'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Blog'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Contact us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Log in'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sign up'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Employers, are you recruiting?'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: myLayoutWidget(),
    );
  }

  Widget myLayoutWidget() {
    return Stack(
      children: [
        const Align(
          alignment: Alignment(-0.6, -0.8),
          child: Text(
            "Ethiojobs",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
        const Align(
          alignment: Alignment(-0.6, -0.63),
          child: Text(
            "Find top employers",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-0.6, 0), // Center alignment for the button
          child: ElevatedButton(
            onPressed: () {
              print('Search icon tapped!');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
              textStyle: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            child: const Text('Get Started', style: TextStyle(color: Colors.white)),
          ),
        ),
      Align(
          alignment: Alignment(-0.6, 0.5),
          child: Container(
            width: 300, 
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0,
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                contentPadding: EdgeInsets.all(15),
                 // Make sure this path is correct
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
      ),
      Align(
              alignment: Alignment(0.9, 0.5), // Adjust alignment as needed
              child: GestureDetector(
                onTap: () {
                },
                child: Container(
                  width: 50,  
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color
                    shape: BoxShape.rectangle, // Ensure it's square
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.asset(
                    'assets/search.svg',
                    width: 10, // Set width for the icon
                    height: 10, // Set height for the icon
                  ),
                ),
              ),
    )],
    );
  }
}