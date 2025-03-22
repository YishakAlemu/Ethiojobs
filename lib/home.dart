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
              height: 110, // Set the desired height
            ),
            SizedBox(width: 10), // Add space between the image and title
           
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
              textStyle: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            child: const Text('Get Started', style: TextStyle(
               fontSize: 20,
               color: Colors.white)),
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
              borderSide: BorderSide(color: const Color.fromARGB(255, 107, 101, 101)),
                ),
              ),
            ),
          ),
      ),
      Align(
              alignment: Alignment(0.8, 0.45), 
              child: GestureDetector(
                onTap: () {
                },
                child: Container(
                  width: 48,  
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white, // 
                    shape: BoxShape.rectangle, 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.11),
                        blurRadius: 10,
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  
                  child: SvgPicture.asset(
                    'assets/search.svg',
                    width: 5, // Set width for the icon
                    height: 5, // Set height for the icon
                  ),
                ),
              ),
    )],
    );
  }
}