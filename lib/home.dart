import 'package:flutter/material.dart';



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
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/ethiojobs.webp',
          height: 125,
          width: 145,
        ),
        PopupMenuButton<String>(
          icon: Icon(Icons.menu, size: 30), 
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem<String>(
                child: Text('Find Jobs'),
              ),
              PopupMenuItem<String>(
                child: Text('Find Companies'),
              ),
              PopupMenuItem<String>(
                child: Text('Blog'),
              ),
              PopupMenuItem<String>( 
                child: Text('Contact Us'),
              ),
              PopupMenuItem<String>(               
                child: Text('Log In'),
              ),
              PopupMenuItem<String>(           
                child: Text('Sign Up'),
              ),
              PopupMenuItem<String>(
                child: Text('Employers,are you recruiting?'),
              ),
            ];
          },
          onSelected: (String value) {

          },
        ),
      ],
    ),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 5,
            shadowColor: Colors.black,
      ),
          ),
                 body: SingleChildScrollView(
                 child: Column(
                 children: [
            // First main container
                    Container(
                     height: 210,
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
              width:400,
              
              color: const Color.fromARGB(150, 255, 255, 255), // Background color for the second container
              child: Column(
                children: [

                  Container(
                    height: 340,
                    width: 355,
                  margin: EdgeInsets.only(top: 115),
                  decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                           child: Center(
                              child: Text(
                        'Sub Container 1',
                        style: TextStyle(color: Colors.black, fontSize: 18), // Changed color for visibility
                          ),
                         ),
                      ),

                  Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),

                  Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),

                Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                
                Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                   
                   Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                
                Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                
                Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                
                Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                
                Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                
                Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                
                Container(

                    height: 340,
                    width: 355,
                    margin: EdgeInsets.only(top: 150),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                
                Container(

                    height: 290,
                    width: 355,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
               color: Colors.black.withOpacity(0.1), // Shadow color
               spreadRadius: 5, // Spread radius
                blurRadius: 10, // Blur radius
                offset: Offset(0, 2), // Offset for the shadow
                    ),
                  ], // Set the circular radius here
                           ),
                    child: Center(
                      child: Text(
                        'Sub Container 2',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),

                 
                ],
              ),
            ),
            Container(
              height: 600,
              color: Color.fromARGB(255, 72, 193, 156), // Background color for the footer
              margin: EdgeInsets.only(top: 25), // Spacing above the footer
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