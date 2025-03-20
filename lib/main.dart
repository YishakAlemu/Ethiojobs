import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Ethiojobs",style: TextStyle(fontSize: 24)),
          actions: [
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            ),
          ],
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
               
                title: Text('Find jobs'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
               
                title: Text('Find companies'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                
                title: Text('Blog'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
               
                title: Text('Contact us'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                
                title: Text('Log in'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
               
                title: Text('Sign up'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                
                title: Text('Employers, are you recruiting?'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Ethiojobs',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              SizedBox(height: 40), // Spacing between texts
              Text(
                'Find top employers',
                style: TextStyle(fontSize: 24,color:Colors.black),
              ),
              SizedBox(height: 20), // Spacing before the button
              ElevatedButton(
  onPressed: () {
    // Action for button
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green, // Set background color to green
    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16), 
    textStyle: TextStyle(fontSize: 18), // Increase text size
  ),
  child: Text('Get Started'),
),
            ],
          ),
        ),
      ),
    );
  }
}
      
