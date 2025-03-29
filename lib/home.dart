import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.0),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        shadowColor: Colors.black,
        actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/your_image.png', height: 40), // Update with your image path
      ),
    ],
        ),
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // First main container
            Container(
              height: 200,
              color: Color.fromARGB(255, 72, 193, 156), // Background color for the first container
              child: Center(
                child: Text(
                  'First Container',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            // Second main container
            Container(
              color: Colors.white, // Background color for the second container
              child: Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.blue[100],
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(
                        'Sub Container 1',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[200],
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[300],
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(
                        'Sub Container 3',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[400],
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(
                        'Sub Container 4',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[500],
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(
                        'Sub Container 5',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[600],
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(
                        'Sub Container 6',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[700],
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(
                        'Sub Container 7',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[800],
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(
                        'Sub Container 8',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[900],
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(
                        'Sub Container 9',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[1000],
                    margin: EdgeInsets.only(top: 5),
                    child: Center(
                      child: Text(
                        'Sub Container 10',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey, // Background color for the footer
              margin: EdgeInsets.only(top: 10), // Spacing above the footer
              child: Center(
                child: Text(
                  'footer',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}