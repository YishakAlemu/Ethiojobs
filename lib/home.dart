import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  final Function(String) onJobSelected;
  const Homepage({super.key, required this.onJobSelected});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     

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
      
    },
    constraints: BoxConstraints(
      minWidth: 32, 
      minHeight: 32, 
    ),
  ),
),
          ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor : const Color.fromARGB(255, 225, 225, 220),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7), 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(
        color: Colors.grey, 
        width: 0.8, 
      ), 
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
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
        color: Colors.grey, 
        width: 0.8, 
      ), 
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
    children: [
      Text(
        'Carrer', 
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
      ),
      Padding(
        padding: EdgeInsets.only(left: 30.0), 
        child: Icon(Icons.fiber_manual_record, size: 12), 
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
        padding: EdgeInsets.only(left: 30.0), 
        child: Icon(Icons.fiber_manual_record, size: 12), 
      ),
    ],
  ),
),
           Container(
  margin: EdgeInsets.only(top: 4),
  height: 40,
  width: 160, 
  decoration: BoxDecoration(
    color: const Color.fromARGB(255, 225, 225, 220), 
    borderRadius: BorderRadius.circular(8), 
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2), 
        spreadRadius: 1,
        blurRadius: 3,
        offset: Offset(0, 2), 
      ),
    ],
  ),
  child: PopupMenuButton<String>(
    onSelected: (String value) {
      
    },
    icon: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Posted Wit...',
            style: TextStyle(overflow: TextOverflow.ellipsis,fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ),
        Icon(Icons.arrow_drop_down, color: Colors.grey), 
      ],
    ),
    itemBuilder: (BuildContext context) => [
      PopupMenuItem(value: 'Any date', child: Text('Any date',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),)),
      PopupMenuItem(value: 'Since yesterday', child: Text('Since yesterday',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),)),
      PopupMenuItem(value: 'Last 7 days', child: Text('Last 7 days',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),)),
      PopupMenuItem(value: 'Last 30 days', child: Text('Last 30 days',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),)),
    ],
    offset: Offset(0, 40), 
    color: Colors.white, 
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
            



            // SECOND MAIN CONTAINER
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
        
        color: Colors.white,
        height: 34, // Height for the button row
        width: 355,
        margin: EdgeInsets.only(top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Start alignment for manual control
          children: [
            SizedBox(width:6),
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
                  style: TextStyle(color: Colors.indigo,fontSize: 14.8),
                ),
              ),
            ),
            SizedBox(width:11),
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
                child: Text('Premium', style: TextStyle(color: Colors.green, fontSize: 14.8,),),
              ),
            ),
            SizedBox(width:11),
            Padding(
  padding: const EdgeInsets.only(right: 0.0), 
  child: TextButton.icon(
    onPressed: () {
      // Button action
    },
    style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove any padding from the button
          minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
        ),
    icon: Container(
      
      width:10,
      height:15,
      child: Icon(
        Icons.flash_on_outlined,
        size: 16,
        color: const Color.fromARGB(255, 15, 92, 154), // Lightning icon color
      ),
    ),
    label: Text(
      'Easy Apply',
      style: TextStyle(
        color: Colors.blueAccent,
        fontSize: 14.8,
      ),
    ),
  ),
),
            SizedBox(width: 57),
            TextButton(
  onPressed: () {
    
  },
  style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove any padding from the button
          minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
        ),
  child: Icon(
    Icons.bookmark_border, // Use Icons.favorite for filled heart
    color: Colors.black54, // Customize the icon color
    size: 24.5, // Customize the icon size
  ),
)
          ],
        ),
      ), //
         
   Container(
    color: Colors.white,
    height:148,
    width:320,
    padding: EdgeInsets.all(4.0),
    child: Row(
       
mainAxisAlignment: MainAxisAlignment.start,
       children: [
      Container(
        
        width:120,
        padding: EdgeInsets.all(0.0),
        color: Colors.white,
        child: Image.asset(
          'assets/ethiojobs.webp',
          
        ),
      ),
    
        Container(
          padding: EdgeInsets.all(0),
          color: Colors.white,
          height: 140,
              width: 190,
              
          child: Column(
            children: [
               TextButton(
  onPressed: () {
    widget.onJobSelected('Senior FullStack Developer');
  },
  style: TextButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1), // Adjust padding
  ),
  child: SizedBox(
    width: 200, // Set a fixed width for the button
    child: Text(
      'Senior FullStack Developer',
      style: TextStyle(color: Colors.black, fontSize: 18),
      overflow: TextOverflow.ellipsis, // Enable ellipsis
      maxLines: 2, // Limit to one line
    ),
  ),
),
            SizedBox(height: 8.0),
              SizedBox(
                
                
  width: 160.0, // Set the desired width
  height: 33.0, // Set the desired height
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
      'Computer Science & IT',
      style: TextStyle(color: Colors.black, fontSize: 12.5,fontWeight: FontWeight.w400, ), overflow: TextOverflow.ellipsis,maxLines: 1, // Text color
    ),
  ),
),
SizedBox(height: 8.0),
 SizedBox(
  width: 160.0, // Set the desired width
  height: 33.0, // Set the desired height
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
      style: TextStyle(color: Colors.black, fontSize: 12.5,fontWeight: FontWeight.w400,),overflow: TextOverflow.ellipsis,maxLines: 2, // Text color
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
  height: 25,
  width: 338,
  margin: EdgeInsets.symmetric(horizontal: 22.0),
  padding: EdgeInsets.all(3), // Ensure no padding around the container
  color: Colors.white,
  child: Row(
    children: [
      // Label
      Text(
        '30 minutes ago by ',
        style: TextStyle(fontSize: 14), // Customize the style as needed
      ),
      SizedBox(width: 6),
      // Text Button
      Expanded( // Use Expanded to take available space
        child: TextButton(
          onPressed: () {
            // Action to perform when the button is pressed
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(0),
            minimumSize: Size(0, 0), // Remove padding from the button
          ),
          child: Text(
            'ETHIOJOBS & AFRINET',
            style: TextStyle(fontSize: 16, color: Colors.blueAccent),
            overflow: TextOverflow.ellipsis, // Enable ellipsis
            maxLines: 1, // Limit to one line
          ),
        ),
      ),
    ],
  ),
),


      Container(
        height: 25,
  width: 338,
  margin: EdgeInsets.symmetric(horizontal: 22.0),
  padding: EdgeInsets.only(top:6), // Ensure no padding around the container
  color: Colors.white,

  child: Row(
    children: [
         Padding(
  padding: const EdgeInsets.only(right: 0.0), 
  child: TextButton.icon(
    onPressed: () {
      // Button action
    },
    style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove any padding from the button
          minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
        ),
    icon: Icon(
      Icons.location_on_outlined,
      size: 17,
      color: Colors.black, // Lightning icon color
    ),
    label: Text(
      'Addis Ababa',
      style: TextStyle(
        color: Colors.black,
        fontSize: 14.8,
      ),
    ),
  ),
),
SizedBox(width:20),
Padding(
  padding: const EdgeInsets.only(right: 0.0), 
  child: TextButton.icon(
    onPressed: () {
      // Button action
    },
    style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove any padding from the button
          minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
        ),
    icon: Icon(
      Icons.calendar_month_outlined,
      size: 16,
      color: Colors.black, // Lightning icon color
    ),
    label: Text(
      'April 10th, 2025',
      style: TextStyle(
        color: Colors.black,
        fontSize: 14.8,
      ),
    ),
  ),
),
  ],)
      ),
SizedBox(width:50),
            Container(
              height: 60,
             width: 338,
             margin: EdgeInsets.symmetric(horizontal: 22.0),
             padding: EdgeInsets.only(top:10),
             color: Colors.white,
             child:Row(
              children: [
                  Padding(
  padding: const EdgeInsets.only(right: 0.0), 
  child: Container(
    padding: EdgeInsets.only(top:2),
    color: Colors.white,
    height: 38,
    width : 140,
    child: ElevatedButton(
      onPressed: () {
        // Button action
      },
      style: ElevatedButton.styleFrom(
             padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        shape: RoundedRectangleBorder(
          
          borderRadius: BorderRadius.circular(18.0), // Rounded corners
        ),
        backgroundColor: const Color.fromARGB(255, 72, 193, 156),
          ),
      child: Text(
        'Apply Now',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.8,
        ),
      ),
    ),
  ),
),
SizedBox(width:25),
Padding(
  padding: const EdgeInsets.only(right: 0.0), 
  child: Container(
    padding: EdgeInsets.only(top:2),
    color: Colors.white,
    height: 38,
    width : 140,
    child: ElevatedButton(
      onPressed: () {
        // Button action
      },
      style: ElevatedButton.styleFrom(
             padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0), // Rounded corners
        ),
        backgroundColor: const Color.fromARGB(200, 255, 255, 255),
          ),
      child: Text(
        'See More',
        style: TextStyle(
          color: const Color.fromARGB(255, 72, 193, 156),
          fontSize: 14.8,
        ),
      ),
    ),
  ),
),

             ],)
            )
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
               SizedBox(height:18),



            Container(
              height: 605,
              width:400,
              color: Color.fromARGB(255, 72, 193, 156), // Background color for the footer
              margin: EdgeInsets.only(top: 25), 
              
              child: Container(
                margin: EdgeInsets.only(top: 15), 
                child: Column(
                  children: [
                    SizedBox(height : 37),
                      SizedBox(
  
  height: 57,
  width: 290,
  child: ClipRRect(
    borderRadius: BorderRadius.circular(0), // Optional: for rounded corners
    child: Image.asset(
      'assets/africa_jobs.webp',
      fit: BoxFit.fill, // Use BoxFit.fill or BoxFit.cover
      height: 57, // Match container height
      width: 300,  // Match container width
    ),
  ),
),
                    SizedBox(height: 60),
                    Center(
                      child:Text(
                'Subscribe to get updates from', 
                  style: TextStyle(
                color: Colors.white,
                  fontSize: 18,
      ),
    ),
                    ),
                    Text(
                'Ethiojobs', 
                  style: TextStyle(
                color: Colors.white,
                  fontSize: 19
                  
      ),
    ),
    SizedBox(height:5),
    Center(
      child:Container(
              height: 50,
              width: 330,
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
               
              ),
             child: Center(
  child: TextField(
    cursorColor: Colors.black54,
    decoration: InputDecoration(
      hintText: "Your email",
      hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      border: InputBorder.none,
    ),
  ),
),
            ),
    ),
    Row(
      children: [
        SizedBox(width: 210),
        Padding(
          padding: const EdgeInsets.only(left: 0.0, right: 0),
          child: ElevatedButton(
            onPressed: () {
              // Action for Button 2
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 26, 121, 198),
              padding: EdgeInsets.zero, // Remove any padding from the button
              minimumSize: Size(150, 37),  // Ensure minimum size is zero to avoid extra space
            ),
            child: Text('Subscribe', style: TextStyle(color: Colors.white, fontSize: 16,),),
          ),
        ),
        

            
      ]
    ),
               SizedBox(height:20),
               Text('Contact Us', style: TextStyle(
                color: Colors.white, fontSize: 21, fontWeight:FontWeight.w600
               ),),
                   SizedBox(height:10),
                   Text('Meskel Flower Road', style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight:FontWeight.w400
               ),), 
                   Text('Behind Nazra Hotel, Addis Ababa, Ethiopia', style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight:FontWeight.w400
               ),),
               Text('+251-993-87-22-46 | +251-969-23-90-94', style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight:FontWeight.w400
               ),),
               Text('candidates@ethiojobs.net', style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight:FontWeight.w400
               ),),
               SizedBox(height:30),
               Text('About Us | Contact  Us | FAQs', style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight:FontWeight.w400
               ),),
                  SizedBox(height:10),
               Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            
                            width: 255,
                            child: Row(
                              children: [
                                SizedBox(width: 15),
                                FaIcon(FontAwesomeIcons.linkedin, color: Colors.white, size: 30),
                                SizedBox(width: 11),
                                FaIcon(FontAwesomeIcons.instagram, color: Colors.white, size: 29),
                                SizedBox(width: 11),
                                FaIcon(FontAwesomeIcons.youtube, color: Colors.white, size: 29),
                                SizedBox(width: 11),
                                FaIcon(FontAwesomeIcons.xTwitter, color: Colors.white, size: 29),
                                SizedBox(width: 11),
                                FaIcon(FontAwesomeIcons.facebook, color: Colors.white, size: 29),
                                SizedBox(width: 11),
                                FaIcon(FontAwesomeIcons.telegram, color: Colors.white, size: 32),
                              ],
                            ),
                          ),
               SizedBox(height:10),
               Row(
                children: [
                  SizedBox(width:110),
                FaIcon(FontAwesomeIcons.copyright, color: Colors.white,size: 10),
                SizedBox(width:5),
                Text('2004-2024 Ethio Jobs', style: TextStyle(color: Colors.white),),
                ]
               )
                  ],
                  
                  
                  
                  
                  
                  
                  )
              
              ),














            ),
 ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}






