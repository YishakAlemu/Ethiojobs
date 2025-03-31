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
      margin: EdgeInsets.only(top: 20),
  height: 50,
  width: 700,
  child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20), // Adjust the horizontal padding
      child: Wrap(
        spacing: 20, // Space between buttons
        children: [
          
            Container(
              margin: EdgeInsets.only(top: 3),
              height: 42,
              width:42,
  decoration: BoxDecoration(
    color: const Color.fromARGB(255, 225, 225, 220), // Background color
    shape: BoxShape.circle, // Makes the button circular
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2), // Shadow color
        spreadRadius: 0.5, // Spread radius
        blurRadius: 2, // Blur radius
        offset: Offset(0, 0), // Position of the shadow
      ),
    ],
    border: Border.all(
      color: Colors.grey, // Border color
      width: 0.8, // Border width
    ),
  ),
  child: IconButton(
    icon: Icon(Icons.tune, color: Colors.black, size: 22), // Icon color and size
    onPressed: () {
      // Define your action here
    },
    constraints: BoxConstraints(
      minWidth: 32, // Minimum width for the button
      minHeight: 32, // Minimum height for the button
    ),
  ),
),
          ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor : const Color.fromARGB(255, 225, 225, 220),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7), // Adjust padding as needed
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(
        color: Colors.grey, // Border color
        width: 0.8, // Border width
      ), // Optional: rounded corners
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text and icon
    children: [
      Text(
        'Category', 
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
      ),
      Padding(
        padding: EdgeInsets.only(left: 30.0), // Add padding if needed
        child: Icon(Icons.fiber_manual_record, size: 12), // Dot icon on the right
      ),
    ],
  ),
),
          ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor : const Color.fromARGB(255, 225, 225, 220),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7), // Adjust padding as needed
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(
        color: Colors.grey, // Border color
        width: 0.8, // Border width
      ), // // Optional: rounded corners
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text and icon
    children: [
      Text(
        'Location', 
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
      ),
      Padding(
        padding: EdgeInsets.only(left: 30.0), // Add padding if needed
        child: Icon(Icons.fiber_manual_record, size: 12), // Dot icon on the right
      ),
    ],
  ),
),
         ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor : const Color.fromARGB(255, 225, 225, 220),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7), // Adjust padding as needed
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(
        color: Colors.grey, // Border color
        width: 0.8, // Border width
      ), // // Optional: rounded corners
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text and icon
    children: [
      Text(
        'Carrer', 
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
      ),
      Padding(
        padding: EdgeInsets.only(left: 30.0), // Add padding if needed
        child: Icon(Icons.fiber_manual_record, size: 12), // Dot icon on the right
      ),
    ],
  ),
),
          ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor : const Color.fromARGB(255, 225, 225, 220),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7), // Adjust padding as needed
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(
        color: Colors.grey, // Border color
        width: 0.8, // Border width
      ), // // Optional: rounded corners
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text and icon
    children: [
      Text(
        'Employment Type', 
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
      ),
      Padding(
        padding: EdgeInsets.only(left: 30.0), // Add padding if needed
        child: Icon(Icons.fiber_manual_record, size: 12), // Dot icon on the right
      ),
    ],
  ),
),
           Container(
  margin: EdgeInsets.only(top: 4),
  height: 40,
  width: 160, // Fixed width for the dropdown
  decoration: BoxDecoration(
    color: const Color.fromARGB(255, 225, 225, 220), // Background color
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
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ),
        Icon(Icons.arrow_drop_down, color: Colors.grey), // Dropdown icon
      ],
    ),
    itemBuilder: (BuildContext context) => [
      PopupMenuItem(value: 'Any date', child: Text('Any date',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),)),
      PopupMenuItem(value: 'Since yesterday', child: Text('Since yesterday',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),)),
      PopupMenuItem(value: 'Last 7 days', child: Text('Last 7 days',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),)),
      PopupMenuItem(value: 'Last 30 days', child: Text('Last 30 days',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),)),
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
              color: const Color.fromARGB(255, 240, 238, 238), // Background color for the second container
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
    ],
  ),
  child: Column(
    children: [
      Container(
        height: 34, // Height for the button row
        width: 355,
        margin: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Start alignment for manual control
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right:0),
               
              child: TextButton(
                onPressed: () {
                  
                },
                style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove any padding from the button
          minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
        ),
                child: Text(
                  'New',
                  style: TextStyle(color: Colors.blueAccent,fontSize: 14.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.0), // Adjust space for Button 2
              child: TextButton(
                onPressed: () {
                  // Action for Button 2
                },
                style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove any padding from the button
          minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
        ),
                child: Text('Premium', style: TextStyle(color: Colors.green, fontSize: 14.5,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.0), // Adjust space for Button 3
               child :TextButton.icon(
onPressed: () {
            // Button 1 action
          },
          icon: Padding(
            padding: const EdgeInsets.only(left:0,right: 0.0), // Adjust spacing
            child: Icon(Icons.flash_on_outlined,size:18,color:const Color.fromARGB(255, 15, 92, 154)), // Using the lightning icon
          ),
          label: Text('Easy Apply', style: TextStyle(color: const Color.fromARGB(255, 15, 92, 154), fontSize: 14.5),),
        ),
            ),
            SizedBox(width: 40),
            TextButton(
  onPressed: () {
    
  },
  child: Icon(
    Icons.bookmark_border, // Use Icons.favorite for filled heart
    color: Colors.black54, // Customize the icon color
    size: 24.0, // Customize the icon size
  ),
)
          ],
        ),
      ), //
         
       Container(
        color: Colors.blue,
        height:140,
  padding: EdgeInsets.all(3.0),
      child:Row(
       
mainAxisAlignment: MainAxisAlignment.start,
       children: [
        Align(
      alignment: Alignment(-1.0, 0.0), // Adjust alignment as needed (e.g., Alignment.center, Alignment.topRight, etc.)
      child: Image.asset(
        'assets/ethiojobs.webp',
        height: 120,
        width: 140,
      ),
    ),
        Container(
          padding: EdgeInsets.all(0),
          color: Colors.white,
          height: 139,
              width: 200,
              
          child: Column(
            children: [
             
               TextButton(
                onPressed: () {
                  
                },
                style: TextButton.styleFrom(
                  
    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1), // Adjust padding
   // Minimum size for the button
                ),
                child: Text('Senior FullStack Developer\n&Data Engineer', style: TextStyle(overflow: TextOverflow.ellipsis,
                  color: Colors.black, fontSize: 18,),),
              ),
            SizedBox(height: 8.0),
              SizedBox(
  width: 160.0, // Set the desired width
  height: 34.0, // Set the desired height
  child: ElevatedButton(
    onPressed: () {
      // Action when button is pressed
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Rounded corners
      ),
      backgroundColor: const Color.fromARGB(200, 255, 255, 255), // Background color
    ),
    child: Text(
      'ComputerScience & IT',
      style: TextStyle(color: Colors.black, fontSize: 10, overflow: TextOverflow.ellipsis), // Text color
    ),
  ),
),
SizedBox(height: 8.0),
 SizedBox(
  width: 160.0, // Set the desired width
  height: 34.0, // Set the desired height
  child: ElevatedButton(
    onPressed: () {
      // Action when button is pressed
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0), // Rounded corners
      ),
      backgroundColor: const Color.fromARGB(200, 255, 255, 255), // Background color
    ),
    child: Text(
      'Software Engineering',
      style: TextStyle(color: Colors.black, fontSize: 10,overflow: TextOverflow.ellipsis,), // Text color
    ),
  ),
)
              
            ],
          ),
        )
       ],
      )

       ),

    Container(
  padding: EdgeInsets.all(0), // Ensure no padding around the container
  color: Colors.green,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start, // Align contents to the start (left)
    crossAxisAlignment: CrossAxisAlignment.start, // Align to the top
    children: [
      // Label
      Text(
        '30 minutes ago by ',
        style: TextStyle(fontSize: 14), // Customize the style as needed
      ),
      // Text Button
      TextButton(
        onPressed: () {
          // Action to perform when the button is pressed
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(1),
          minimumSize: Size(0, 0), // Remove padding from the button
        ),
        child: Text(
          'ETHIOJOBS & AFRINET',
          style: TextStyle(fontSize: 17),
        ), // Text displayed on the button
      ),
    ],
  ),
),
    ],
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
                        '',
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
                        '',
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
                        '',
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
                        '',
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
                        '',
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
                        '',
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
                        '',
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
                        '',
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
                        '',
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
                        '',
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
                        '',
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
                        '',
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
                        '',
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






