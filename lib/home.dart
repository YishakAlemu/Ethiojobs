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
        value: 'Find Jobs',
        child: Text('Find Jobs'),
      ),
      PopupMenuItem<String>(
        value: 'Find Companies',
        child: Text('Find Companies'),
      ),
      PopupMenuItem<String>(
        value: 'Blog',
        child: Text('Blog'),
      ),
      PopupMenuItem<String>(
        value: 'Contact Us',
        child: Text('Contact Us'),
      ),
      PopupMenuItem<String>(
        value: 'Log In',
        child: Text('Log In'),
      ),
      PopupMenuItem<String>(
        value: 'Sign Up',
        child: Text('Sign Up'),
      ),
      PopupMenuItem<String>(
        value: 'Employers, are you recruiting?',
        child: Text('Employers, are you recruiting?'),
      ),
    ];
  },
  onSelected: (String value) {
    // Handle selection here
  },
  offset: Offset(0, 35), // Adjust this value to control vertical position
)
      ],
    ),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 5,
            shadowColor: Colors.black,
      ),
          ),

           //BODY 
                 body: SingleChildScrollView(
                 child: Column(
                 children: [
            // First main container
                    Container(
                     height: 215,
                     width:700,
                 color: Color.fromARGB(255, 72, 193, 156), // Background color for the first container
               child: Column(
          children: [
            Container(
              height: 60,
              width: 355,
              margin: EdgeInsets.only(top: 10),
              
              child: Center(
                child: Text(
                 'Find Your Dream Job in Ethiopia',
                  style: TextStyle(color: Colors.white, fontSize: 20), // Changed color for visibility
               ),
             ),
            ),
            Container(
              height: 50,
              width: 355,
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: Offset(0, 2), // Offset for the shadow
                  ),
                  ],
              ),
             child: Center(
  child: TextField(
    decoration: InputDecoration(
      hintText: "Job title, Keywords, or industry",
      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      border: InputBorder.none,
      prefixIcon: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0), // Add some padding
        child: Icon(Icons.search, color: Colors.grey), // Search icon
      ),
    ),
  ),
),
            ),


    Container(
      margin: EdgeInsets.only(top: 18),
  height: 50,
  width: 700,
  child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20), // Adjust the horizontal padding
      child: Wrap(
        spacing: 20, // Space between buttons
        children: [
          
            Material(
  color: Colors.white, // Background color of the button
  shape: CircleBorder(), // Makes the button circular
  child: IconButton(
    icon: Icon(Icons.tune, color: Colors.black, size: 20), // Icon color and size
    onPressed: () {
      // Define your action here
    },
    constraints: BoxConstraints(
      minWidth: 35, // Minimum width for the button
      minHeight: 35, // Minimum height for the button
    ),
  ),
),
          ElevatedButton(
            onPressed: () {},
            
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Optional: rounded corners
              ),
             
            ),
              child: Text('Category',
              style: TextStyle(fontSize: 13, 
        fontWeight:FontWeight.w400, 
        color: Colors.black)),
          ),
          ElevatedButton(
            onPressed: () {},
            
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Optional: rounded corners
              ),
            ),
            child: Text('Location', 
            style: TextStyle(fontSize: 13, 
        fontWeight:FontWeight.w400, 
        color: Colors.black)),
          ),
          ElevatedButton(
            onPressed: () {},
           
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Optional: rounded corners
              ),
            ),
             child: Text('Carrer',
             style: TextStyle(fontSize: 13, 
        fontWeight:FontWeight.w400, 
        color: Colors.black)),
          ),
          ElevatedButton(
            onPressed: () {},
            
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Optional: rounded corners
              ),
            ),
        child: Text('Employment Type', 
        style: TextStyle(fontSize: 13, 
        fontWeight:FontWeight.w400, 
        color: Colors.black)),
          ),
           Container(
  margin: EdgeInsets.only(top: 4),
  height: 40,
  width: 160, // Fixed width for the dropdown
  decoration: BoxDecoration(
    color: Colors.white, // Background color
    borderRadius: BorderRadius.circular(8), // Rounded corners
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2), // Shadow effect
        spreadRadius: 1,
        blurRadius: 3,
        offset: Offset(0, 2), // Position of shadow
      ),
    ],
  ),
  child: PopupMenuButton<String>(
    onSelected: (String value) {
      // Handle the selection
    },
    icon: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text and icon
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Posted Wit...',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
        Icon(Icons.arrow_drop_down, color: Colors.grey), // Dropdown icon
      ],
    ),
    itemBuilder: (BuildContext context) => [
      PopupMenuItem(value: 'Any date', child: Text('Any date')),
      PopupMenuItem(value: 'Since yesterday', child: Text('Since yesterday')),
      PopupMenuItem(value: 'Last 7 days', child: Text('Last 7 days')),
      PopupMenuItem(value: 'Last 30 days', child: Text('Last 30 days')),
    ],
    offset: Offset(0, 40), // Adjust this value to control vertical position
    color: Colors.white, // Background color of dropdown menu
  ),
)
        ],
      ),
    ),
  ),
),
          ]
        ),
    ),
            



            // Second main container
            Container(
              width:400,
             // margin: EdgeInsets.only(top: 8),
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