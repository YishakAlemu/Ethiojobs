import 'package:flutter/material.dart';

void main() {
  runApp(const ethiojobs());
}
//this is another test statement
class ethiojobs extends StatelessWidget {
  const ethiojobs ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Ethiojobs",style: TextStyle(fontSize: 24)),
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Ethiojobs',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const SizedBox(height: 40), // Spacing between texts
              const Text(
                'Find top employers',
                style: TextStyle(fontSize: 24,color:Colors.black),
              ),
              const SizedBox(height: 20), // Spacing before the button
              ElevatedButton(
  onPressed: () {
    // Action for button
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green, // Set background color to green
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16), 
    textStyle: const TextStyle(fontSize: 18), // Increase text size
  ),
  child: const Text('Get Started'),
),
            ],
          ),
        ),
      ),
    );
  }
}
      
