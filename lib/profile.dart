import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
import 'home.dart';
import 'login.dart'; 
import 'signup.dart';
import 'login.dart'; 
import 'parent_widget.dart';
class Profilepage extends StatefulWidget {
  const Profilepage({super.key});
  

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  bool _isExpanded = false;
  double _progress = 0.5; // Initialize _progress variable
  String _percentage = "30%"; // Initialize _percentage variable

  void _startLoading() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (_progress < 1.0) {
        setState(() {
          _progress += 0.01; // Increment progress
          _percentage = (_progress * 100).toStringAsFixed(0) + "%"; // Update percentage text
        });
      } else {
        timer.cancel(); // Stop the timer when loading is complete
      }
    });
  }
  //double _progress = 0.5; 
void _showPopup(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Popup",
    transitionDuration: Duration(milliseconds: 200),
    pageBuilder: (context, animation1, animation2) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5), // Optional dim background
          body: Center(
            child: Container(
              width: MediaQuery.of(context).size.width, // Full screen width
              height: MediaQuery.of(context).size.height * 0.9,
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  // Fixed Custom AppBar
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    child: Text(
                      "Basic Info",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Scrollable Middle Content
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: List.generate(30, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: TextField(
                              decoration: InputDecoration(labelText: 'Field ${index + 1}'),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),

                  // Fixed Footer
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width:30),
                       
                         
                         ElevatedButton(
                          
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                                    padding: EdgeInsets.zero, 
                                    minimumSize: Size(100, 30), 
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20), 
                                    side: BorderSide.none, 
                                    ),
                                    elevation: 0, 
                                  ),
                                  child: Text('Close', style: TextStyle(color: Colors.grey, fontSize: 16,)),
                                ),
                        
                        ElevatedButton(
                                  onPressed: () {
                                    // Action for Button 2
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                    padding: EdgeInsets.zero, // Remove any padding from the button
                                    minimumSize: Size(150, 37),  // Ensure minimum size is zero to avoid extra space
                                  ),
                                  child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 16,)),
                                ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

  void _toggleContainer() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: SingleChildScrollView(
        
  child: 
  Column(
    children: [
      SizedBox(height: 50),
      Center(
  child: AnimatedContainer(
    duration: Duration(milliseconds: 300),
    curve: Curves.easeInOut,
    height: _isExpanded ? 900 : 700, // Height changes based on state
    width: 370,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 72, 193, 156),
      borderRadius: BorderRadius.circular(20), // Set the border radius
    ), // Fixed width
    child: Column(
      children: [
        SizedBox(
          width: 350, // Define a width
          height: 300,
          child: Stack(
            children: [
              Positioned(
                 right: 65,
                top: 50,
                child: Container(
                  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(color: Color.fromARGB(255, 33, 232, 172), width: 4), // Set your border color and width
  ),
                  child: CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage('assets/user_blue.webp'), ),
                ),
              ),
              Positioned(
               right: 18,
                top: 20,
child: Row(
  children: [
    Padding(
      padding: const EdgeInsets.only(right: 0.0), 
      child: TextButton.icon(
        onPressed: ( ) {
          _showPopup(context);
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove any padding from the button
          minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
        ),
        icon: Container(
          width:15,
          child: Icon(
            Icons.edit,
            size: 25,
            color: Colors.white, // Lightning icon color
          ),
        ),
        label: Text(
          'Edit',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.8,
          ),
        ),
      ),
    ),
  ],
),

              ),
              Positioned(
                right: 80,
                top:220,
                
          child: Container(
            width:35,
            height:35,
            decoration: BoxDecoration(
      color:Colors.white,
      borderRadius: BorderRadius.circular(20), // Set the border radius
    ),
            child: TextButton.icon(
                    onPressed: ( ) {
            
                    },
                    style: TextButton.styleFrom(
            padding: EdgeInsets.zero, // Remove any padding from the button
            minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
                    ),
                    icon: SizedBox(
            width:15,
            child: Icon(
              Icons.edit,
              size: 24,
              color: Color.fromARGB(255, 72, 193, 156), 
            ),
                    
            ), label: Text(
            '',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.8,
            ),
                    ),),
          ),
        
              ),
            ],
          ),
        ),
     
                  SizedBox(height: 25),
                  Text('Jon Don', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 2),
                  Text('Age 22, other', style: TextStyle(color: Colors.white, fontSize: 17)),
                  SizedBox(height: 20),
                  
                  Row(
        children: [
          SizedBox(width: 100),
          Icon(Icons.location_on, color: Colors.white, size: 17),
          SizedBox(width: 5),
          Text(
            'Addis Ababa, Ethiopia',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ]
                  ),
                SizedBox(height:10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.mail, color: Colors.white, size: 17),
          SizedBox(width: 5),
          Text(
            'testabenezer@gmail.com',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ]
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.phone, color: Colors.white, size: 17),
          SizedBox(width: 5),
          Text(
            '+2517890987',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ]
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.public, color: Colors.white, size: 17),
          SizedBox(width: 5),
          Text(
            'www.profile.com',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ]
                  ),
      SizedBox(height: 40),
 if (_isExpanded) // Show content only when expanded
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              
          Container(
            margin: EdgeInsets.only(left: 2),
            width:320,
            child:Column(children: [
            
                        
            Text(
              'Profession: Creative Arts',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              'Carrer Level: Mid Level(3-5years)',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              'Managerial experience: 3-5 years',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
             Text(
              'Years of experience: Mid Level(3-5years)', softWrap: false,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),

            ],
            )
          ),
          SizedBox(height:40),
           Text(
              '50% completed', 
              style: TextStyle(color: Colors.white, fontSize: 17,fontWeight:FontWeight.bold),
            ),
            SizedBox(height:10),
          Container(
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(60), // Rounded corners for the container
             color: Colors.black38,),
            width:270,
            clipBehavior: Clip.hardEdge,
            child: LinearProgressIndicator(
                  value: _progress, // Value between 0.0 and 1.0
                  backgroundColor: Colors.transparent, // Background color
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white,
                  ), // Fill color
                  minHeight: 8.0, // Height of the progress bar
                ),
          ),
          SizedBox(height:40),
          IconButton(
  icon: Icon(Icons.visibility_outlined, color: Colors.white, size: 30),
  onPressed: () {
    
  },
)
            ]
        ),
        ),
        Spacer(),
      IconButton(
        icon: Icon(
          _isExpanded ? Icons.expand_less : Icons.expand_more,
          color: Colors.white,
        ),
        onPressed: _toggleContainer,
      ),
     
    ],
  ),
),
      )
    ],
  ),
),
  );
  }
}
