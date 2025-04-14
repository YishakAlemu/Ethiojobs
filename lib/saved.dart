import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Savedpage extends StatefulWidget {
  final Function(String) onJobSelected;
  const Savedpage({super.key, required this.onJobSelected});

  

  @override
  _SavedpageState createState() => _SavedpageState();
}

class _SavedpageState extends State<Savedpage> {
 int _selectedNavIndex = 4;
  double progress = 0.5; // Define the progress variable with a value between 0.0 and 1.0
  int? _slide2 = 1;
  Widget _getSegment1(int? segment2) {
  switch (segment2) {
    case 1:
     return SingleChildScrollView( // Wrap with SingleChildScrollView for dynamic content
        child: Center(
          child: Column(
            children: [
              SingleChildScrollView(
            child:Container(
                      width: 355,
                    margin: EdgeInsets.only(top: 45),
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
            ),
            SizedBox(height:40),
    ],
  ),
            
),
              ),
              SizedBox(height:30),
              Container(
                height:380,
                width:366,
                padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 15,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
              )
            ]
              ),
              )
              );
    case 2:
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'Recommended Jobs',
          style: TextStyle(fontSize: 18),
        ),
      );
    default:
      return Container(); // Default case
  }
}
int _getIndex(String label) {
    switch (label) {
      case 'Jobs':
        return 0;
      case 'Applications':
        return 1;
      case 'Profile':
        return 2;
      case 'Alert':
        return 3;
      case 'Saved Jobs':
        return 4;
      default:
        return 0;
    }
  }
@override
  Widget build(BuildContext context) {
  Widget buildNavItem(IconData icon, String label, VoidCallback onTap,double iconSize,Color iconColor) {
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
          Icon(icon, size: iconSize, color: isSelected ? iconColor : const Color.fromARGB(255, 0, 0, 0),),
          SizedBox(height: 4),
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
      backgroundColor: const Color.fromARGB(255, 253, 253, 253),
      body: SingleChildScrollView(
      child:Column(
        children: [
          SizedBox(height:40),
          Container(
           padding: EdgeInsets.only(left:16),
            child:
            Center(child:Container(
               height:140,
               width: double.infinity,
              padding: EdgeInsets.only(left:5,right:5),
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
            child: Row(children:[
               Container(
                  decoration: BoxDecoration(
                 shape: BoxShape.circle,
    border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),  
  ),
                  child: CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage('assets/jondon.webp'), ),
                ),
                SizedBox(width:10),
                Container(
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [      
                         SizedBox(height:20),
                        Text('Jon Don ', style: TextStyle(fontSize:26, color:Colors.black,fontWeight:FontWeight.bold),),
                        Text('testabenezer@gmail.com ', style: TextStyle(fontSize:15, color:Colors.grey),),
                  ],),
                )
            ]),
            )
          ),
          ),
            
         SizedBox(height:40),
        SizedBox(
         height:100,

  child: ListView(children:[
           CupertinoSlidingSegmentedControl<int>(
            padding: EdgeInsets.all(10),
            children:{
              1: Container(
                alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 13), // Increase vertical padding
          child:Text('Saved Jobs'),
              ),
              2: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 13), // Increase vertical padding
          child:Text("Recommended Jobs")),
            },
            groupValue: _slide2,
            onValueChanged: (int? newValue){
              
              setState(() {
                _slide2 = newValue;
              
              
            });
            },
  
  
  
           ),
  ])

),

 Container(
  constraints: BoxConstraints(
    minHeight: 400, // Set a minimum height
  ),
  child: _getSegment1(_slide2),
),
        ]
      )
      ),
      bottomNavigationBar: 
      BottomAppBar(
        elevation: 8,
  color: Colors.white,
  child: Container(
    height: 70,
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
          const Color.fromARGB(255, 72, 193, 156),
        ),
        buildNavItem(Icons.menu_book_outlined, 'Applications', () {
          Navigator.pushNamed(context, '/apps');
        }, 22, const Color.fromARGB(255, 72, 193, 156)),
        buildNavItem(Icons.person_outline_outlined, 'Profile', () {
          Navigator.pushNamed(context, '/profile');
        }, 35, const Color.fromARGB(255, 72, 193, 156)),
        buildNavItem(Icons.add_alert_sharp, 'Alert', () {
          // Action for Alert
        }, 22, const Color.fromARGB(255, 72, 193, 156)),
        buildNavItem(Icons.bookmark_added, 'Saved Jobs', () {
          Navigator.pushNamed(context, '/saved');
        }, 22, const Color.fromARGB(255, 72, 193, 156)),
      ],
    ),
  ),
),
      );
      
}
}