import 'package:flutter/material.dart';

class Savedpage extends StatefulWidget {
  const Savedpage({super.key});

  @override
  _SavedpageState createState() => _SavedpageState();
}

class _SavedpageState extends State<Savedpage> with SingleTickerProviderStateMixin {
  int _selectedNavIndex = 3;
  int _getIndex(String label) {
    switch (label) {
      case 'Jobs':
        return 0;
      case 'Companies':
        return 1;
      case 'My Applications':
        return 2;
      case 'Profile':
        return 3;
     
      default:
        return 0;
    }
  }

  double progress = 0.5; // Define the progress variable with a value between 0.0 and 1.0
  final int _slide1 = 1;
  late TabController _tabController;


  Widget _getSegment1(int? segment1) {
    switch (segment1) {
      case 1:
        return SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SingleChildScrollView(
                    child:Container(

                    
                    width: 380,
                    margin: EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: [
                 
                  ],
                   border: Border(
     bottom: BorderSide(
        color: Colors.grey.withOpacity(0.5), 
        width: 1, 
      ),
      
      left: BorderSide(color: Colors.transparent),
      right: BorderSide(color: Colors.transparent),
      top: BorderSide(color: Colors.transparent),
    ), // Set the circular radius here
                           ),
                    child: Column(children: [
                      SizedBox(height:5),
                      Row(
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
    icon: SizedBox(
      
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
            SizedBox(width: 90),
            TextButton(
  onPressed: () {
    
  },
  style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove any padding from the button
          minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
        ),
  child: Icon(
    Icons.delete_outline, // Use Icons.favorite for filled heart
    color: Colors.black54, // Customize the icon color
    size: 24.5, // Customize the icon size
  ),
)
          ],
        ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width:10),
                          SizedBox(
                            
                              width: 90, 
                              height: 55, 
                              child: ClipRect( 
                              child: Image.asset(
                              'assets/ethiojobs.webp', 
                               fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio while filling the container
                                  ),
                                 ),
                                  ),
                                SizedBox(width:10),
                                SizedBox(
                                  width:120,
                                  height:25,
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
                                        'Accounting',
                                        style: TextStyle(color: Colors.black, fontSize: 12.5,fontWeight: FontWeight.w400, ), overflow: TextOverflow.ellipsis,maxLines: 1, // Text color
                                      ),
                                    ),
                                ),
  SizedBox(width:10),
  SizedBox(
    width:120,
    height:25,
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
                        ],
                      ),
                       Row(
                         children: [
                          SizedBox(width:10),
                           Container(
                           
                            alignment: Alignment.centerLeft,
                            
                            width:355,
                            height:40,
                            
                            child: TextButton(
                             onPressed: () {
                               //widget.onJobSelected('Senior FullStack Developer');
                             },
                               child: Text(
                                 'Senior FullStack Developer',
                                 style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                                 overflow: TextOverflow.ellipsis,
                                 maxLines: 1,
                               ),
                             
                           ),
                                               ),
                         ],
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
        '15 days ago by ',
        style: TextStyle(fontSize: 14), // Customize the style as needed
      ),
      SizedBox(width: 10),
      // Text Button
      Container( // Use Expanded to take available space
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
                       Row(
    children: [
      SizedBox(width:10),
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
  ],),
  SizedBox(height: 20),
 
              Row(
                children: [
                  SizedBox(width:130),
                  Container(
                    height:30,
                    width: 100,
                    decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 72, 193, 156), // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(6), // Optional: Rounded corners
            ),
                    child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/apply');
                          },
                          style: ElevatedButton.styleFrom(
                                 padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                            shape: RoundedRectangleBorder(
                              
                              borderRadius: BorderRadius.circular(6.0), // Rounded corners
                            ),
                            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                              ),
                          child: Text(
                            'Apply now',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 72, 193, 156),
                              fontSize: 13.8,
                            ),
                          ),
                        ),
                  ),
                  SizedBox(width:20),
                  Container(
                    height:30,
                    width: 100,
                    decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 72, 193, 156), // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(6), // Optional: Rounded corners
            ),
                    child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/apply');
                          },
                          style: ElevatedButton.styleFrom(
                                 padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                            shape: RoundedRectangleBorder(
                              
                              borderRadius: BorderRadius.circular(6.0), // Rounded corners
                            ),
                            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                              ),
                          child: Text(
                            'See more',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 72, 193, 156),
                              fontSize: 13.8,
                            ),
                          ),
                        ),
                  ),
                ],
              ),          
                   SizedBox(height:15), ],),
                      
                    ),
              ),
                
                SingleChildScrollView(
                    child:Container(

                    
                    width: 380,
                    margin: EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: [
                 
                  ],
                   border: Border(
     bottom: BorderSide(
        color: Colors.grey.withOpacity(0.5), 
        width: 1, 
      ),
      
      left: BorderSide(color: Colors.transparent),
      right: BorderSide(color: Colors.transparent),
      top: BorderSide(color: Colors.transparent),
    ), // Set the circular radius here
                           ),
                    child: Column(children: [
                      SizedBox(height:5),
                      Row(
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
    icon: SizedBox(
      
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
            SizedBox(width: 90),
            TextButton(
  onPressed: () {
    
  },
  style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove any padding from the button
          minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
        ),
  child: Icon(
    Icons.delete_outline, // Use Icons.favorite for filled heart
    color: Colors.black54, // Customize the icon color
    size: 24.5, // Customize the icon size
  ),
)
          ],
        ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width:10),
                          SizedBox(
                            
                              width: 90, 
                              height: 55, 
                              child: ClipRect( 
                              child: Image.asset(
                              'assets/ethiojobs.webp', 
                               fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio while filling the container
                                  ),
                                 ),
                                  ),
                                SizedBox(width:10),
                                SizedBox(
                                  width:120,
                                  height:25,
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
                                        'Accounting',
                                        style: TextStyle(color: Colors.black, fontSize: 12.5,fontWeight: FontWeight.w400, ), overflow: TextOverflow.ellipsis,maxLines: 1, // Text color
                                      ),
                                    ),
                                ),
  SizedBox(width:10),
  SizedBox(
    width:120,
    height:25,
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
                        ],
                      ),
                       Row(
                         children: [
                          SizedBox(width:10),
                           Container(
                           
                            alignment: Alignment.centerLeft,
                            
                            width:355,
                            height:40,
                            
                            child: TextButton(
                             onPressed: () {
                               //widget.onJobSelected('Senior FullStack Developer');
                             },
                               child: Text(
                                 'Senior FullStack Developer',
                                 style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                                 overflow: TextOverflow.ellipsis,
                                 maxLines: 1,
                               ),
                             
                           ),
                                               ),
                         ],
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
        '15 days ago by ',
        style: TextStyle(fontSize: 14), // Customize the style as needed
      ),
      SizedBox(width: 10),
      // Text Button
      Container( // Use Expanded to take available space
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
                       Row(
    children: [
      SizedBox(width:10),
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
  ],),
  SizedBox(height: 20),
 
              Row(
                children: [
                  SizedBox(width:130),
                  Container(
                    height:30,
                    width: 100,
                    decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 72, 193, 156), // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(6), // Optional: Rounded corners
            ),
                    child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/apply');
                          },
                          style: ElevatedButton.styleFrom(
                                 padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                            shape: RoundedRectangleBorder(
                              
                              borderRadius: BorderRadius.circular(6.0), // Rounded corners
                            ),
                            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                              ),
                          child: Text(
                            'Apply now',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 72, 193, 156),
                              fontSize: 13.8,
                            ),
                          ),
                        ),
                  ),
                  SizedBox(width:20),
                  Container(
                    height:30,
                    width: 100,
                    decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 72, 193, 156), // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(6), // Optional: Rounded corners
            ),
                    child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/apply');
                          },
                          style: ElevatedButton.styleFrom(
                                 padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                            shape: RoundedRectangleBorder(
                              
                              borderRadius: BorderRadius.circular(6.0), // Rounded corners
                            ),
                            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                              ),
                          child: Text(
                            'See more',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 72, 193, 156),
                              fontSize: 13.8,
                            ),
                          ),
                        ),
                  ),
                ],
              ),          
                   SizedBox(height:15), ],),
                      
                    ),
              ),
              SingleChildScrollView(
                    child:Container(

                    
                    width: 380,
                    margin: EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: [
                 
                  ],
                   border: Border(
     bottom: BorderSide(
        color: Colors.grey.withOpacity(0.5), 
        width: 1, 
      ),
      
      left: BorderSide(color: Colors.transparent),
      right: BorderSide(color: Colors.transparent),
      top: BorderSide(color: Colors.transparent),
    ), // Set the circular radius here
                           ),
                    child: Column(children: [
                      SizedBox(height:5),
                      Row(
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
    icon: SizedBox(
      
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
            SizedBox(width: 90),
            TextButton(
  onPressed: () {
    
  },
  style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove any padding from the button
          minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
        ),
  child: Icon(
    Icons.delete_outline, // Use Icons.favorite for filled heart
    color: Colors.black54, // Customize the icon color
    size: 24.5, // Customize the icon size
  ),
)
          ],
        ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width:10),
                          SizedBox(
                            
                              width: 90, 
                              height: 55, 
                              child: ClipRect( 
                              child: Image.asset(
                              'assets/ethiojobs.webp', 
                               fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio while filling the container
                                  ),
                                 ),
                                  ),
                                SizedBox(width:10),
                                SizedBox(
                                  width:120,
                                  height:25,
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
                                        'Accounting',
                                        style: TextStyle(color: Colors.black, fontSize: 12.5,fontWeight: FontWeight.w400, ), overflow: TextOverflow.ellipsis,maxLines: 1, // Text color
                                      ),
                                    ),
                                ),
  SizedBox(width:10),
  SizedBox(
    width:120,
    height:25,
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
                        ],
                      ),
                       Row(
                         children: [
                          SizedBox(width:10),
                           Container(
                           
                            alignment: Alignment.centerLeft,
                            
                            width:355,
                            height:40,
                            
                            child: TextButton(
                             onPressed: () {
                               //widget.onJobSelected('Senior FullStack Developer');
                             },
                               child: Text(
                                 'Senior FullStack Developer',
                                 style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                                 overflow: TextOverflow.ellipsis,
                                 maxLines: 1,
                               ),
                             
                           ),
                                               ),
                         ],
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
        '15 days ago by ',
        style: TextStyle(fontSize: 14), // Customize the style as needed
      ),
      SizedBox(width: 10),
      // Text Button
      Container( // Use Expanded to take available space
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
                       Row(
    children: [
      SizedBox(width:10),
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
  ],),
  SizedBox(height: 20),
 
              Row(
                children: [
                  SizedBox(width:130),
                  Container(
                    height:30,
                    width: 100,
                    decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 72, 193, 156), // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(6), // Optional: Rounded corners
            ),
                    child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/apply');
                          },
                          style: ElevatedButton.styleFrom(
                                 padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                            shape: RoundedRectangleBorder(
                              
                              borderRadius: BorderRadius.circular(6.0), // Rounded corners
                            ),
                            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                              ),
                          child: Text(
                            'Apply now',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 72, 193, 156),
                              fontSize: 13.8,
                            ),
                          ),
                        ),
                  ),
                  SizedBox(width:20),
                  Container(
                    height:30,
                    width: 100,
                    decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 72, 193, 156), // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(6), // Optional: Rounded corners
            ),
                    child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/apply');
                          },
                          style: ElevatedButton.styleFrom(
                                 padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                            shape: RoundedRectangleBorder(
                              
                              borderRadius: BorderRadius.circular(6.0), // Rounded corners
                            ),
                            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                              ),
                          child: Text(
                            'See more',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 72, 193, 156),
                              fontSize: 13.8,
                            ),
                          ),
                        ),
                  ),
                ],
              ),          
                   SizedBox(height:15), ],),
                      
                    ),
              ),
              ],
            ),
          ),
        );
      case 2:
        return Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Recommneded Jobs',
            style: TextStyle(fontSize: 18),
          ),
        );
      default:
        return Container(); // Default case
    }
  }
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
   
     Widget buildNavItem(IconData icon, String label, VoidCallback onTap,double iconSize,Color iconColor,double scaleFactor,) {
    bool isSelected = _selectedNavIndex == _getIndex(label);
 
  return InkWell(
    onTap: () {
        onTap();
        setState(() {
          _selectedNavIndex = _getIndex(label); // Update the selected index
        });
      },
    child: SizedBox(
      width: 60,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.scale(
  scale: scaleFactor, // Pass your scale factor here
  child: Icon(
    icon, // Your icon
    size: iconSize, // Base size of the icon
    color: isSelected ? iconColor : const Color.fromARGB(255, 0, 0, 0), // Color based on selection
  ),
),
          SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(fontSize: 12, color: isSelected ? iconColor : const Color.fromARGB(255, 0, 0, 0),),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}

    return Scaffold(
       appBar:  PreferredSize(
  preferredSize: Size.fromHeight(65.0),
  child: AppBar(
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
        
         
          Image.asset(
            'assets/ethiojobs.webp',
            height: 125,
            width: 145,
          ),
      
        SizedBox(width:70),
         Container(
         
           child: Column(children: [
            SizedBox(height: 13),
            GestureDetector(
             onTap: () {
               // Your onTap logic here
               Navigator.pushNamed(context, '/account');
             },
             child: Container(
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),
               ),
               child: CircleAvatar(
                 radius: 22,
                 backgroundImage: AssetImage('assets/jondon.webp'), // Ensure this image exists
               ),
             ),
           ),
           ],),
         )
      ],
    ),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 5,
            shadowColor: Colors.black,
      ),
          ),
  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
  body: SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 16),
          child: Center(
            child: Container(
              height: 55,
              width: double.infinity,
              padding: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Row(children: [
                 GestureDetector(
                  onTap: () {
                   Navigator.pushNamed(context, '/profile'); // Navigate to Accountpage
                        },
                    child:
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/jondon.webp'),
                  ),
                ),
                 ),
                SizedBox(width: 10),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jon Don',
                        style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'testabenezer@gmail.com',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          height: 1200, // Set a fixed height for the container
          child: Column(
            children: [
              TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'Saved Jobs'),
                  Tab(text: "Recommended Jobs"),
                ],
                indicatorColor: const Color.fromARGB(255, 72, 193, 156), // Color of the indicator below the active tab
                labelColor: Colors.black, // Color of the text for the active tab
                unselectedLabelColor: Colors.black38, // Color for the inactive tabs
                indicatorWeight: 2.0,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _getSegment1(1), // Call your existing method for My Applications
                    _getSegment1(2), // Call your existing method for Application Status
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),

      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        height:67,
        color: Colors.white,
        child: Container(
          
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
        buildNavItem(
          
          Icons.search_rounded,
          'Jobs',
          () {
            Navigator.pushNamed(context, '/home');
          },
          22,
          const Color.fromARGB(255, 0, 0, 0), 0.7
          
        ),
         buildNavItem(Icons.business_outlined, 'Companies', () {
          Navigator.pushNamed(context, '/companies');
        }, 22, const Color.fromARGB(255, 0, 0, 0),0.7),
        buildNavItem(Icons.assignment_outlined, 'My Applications', () {
          Navigator.pushNamed(context, '/apps');
        }, 22, const Color.fromARGB(255, 0, 0, 0),0.7),
       
        buildNavItem(Icons.person_outline_outlined, 'Profile', () {
          Navigator.pushNamed(context, '/profile');
        }, 22, const Color.fromARGB(255, 0, 0, 0),0.7),
      ],
          ),
        ),
      ),
    );
  }
}