// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 20.0,
        title: const Text(
          "ethiojobs",
          style: TextStyle(
            fontFamily: 'UbuntuCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
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
              // Action for button
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
      ],
    );
  }
}