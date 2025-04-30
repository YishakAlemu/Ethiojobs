import 'package:flutter/material.dart';



class Accountpage extends StatefulWidget {
  const Accountpage({super.key});



  @override
  _AccountpageState createState() => _AccountpageState(
    
  );
}

class _AccountpageState extends State<Accountpage> {
  bool _issavedHovered = false;
  bool _issavedPressed = false;
  bool _isprofileHovered = false;
  bool _isprofilePressed = false;
  bool _isjobalertHovered = false;
  bool _isjobalertPressed = false;
  bool _isappsHovered = false;
  bool _isappsPressed = false;
  bool _isjobsHovered = false;
  bool _isjobsPressed = false;
  bool _iscompaniesHovered = false;
  bool _iscompaniesPressed = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255,255, 255, 255),
body: Container(
  child: Column(children: [
    SizedBox(height:20),
    Container(
              padding: EdgeInsets.only(left: 16),
              child: Center(
                child: Container(
                  
                  height: 100,
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
                    
                    Container(
                      
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/jondon.webp'),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15),
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
               SizedBox(height:10),
               
               Container(

               ),

                   Container(child:Row(children: [
                    SizedBox(width:50),
                    MouseRegion(
      onEnter: (_) {
        setState(() {
          _issavedHovered = true; // Mouse is hovering
        });
      },
      onExit: (_) {
        setState(() {
          _issavedHovered = false; // Mouse has exited
        });
      },
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            _issavedPressed = true; // Button is pressed
          });
        },
        onTapUp: (_) {
          setState(() {
            _issavedPressed = false; // Button is released
          });
          Navigator.pushNamed(context, '/saved'); // Navigate to Account page
        },
        onTapCancel: () {
          setState(() {
            _issavedPressed = false; // Cancel press
          });
        },
        child: Container(
          height: 50,
          width: 90,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 72, 193, 156), // Border color
              width: 2, // Border width
            ),
            borderRadius: BorderRadius.circular(6), // Rounded corners
            color: _issavedPressed
                ? Colors.grey[300]
                : _issavedHovered
                    ? Colors.grey[200]
                    : Colors.white,
            boxShadow: [
              BoxShadow(
                color: _issavedPressed
                    ? Colors.transparent
                    : _issavedHovered
                        ? Colors.grey.withOpacity(0.5)
                        : Colors.grey.withOpacity(0.2),
                offset: Offset(0, _issavedPressed ? 0 : 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.bookmark_add_outlined,
                size: 15,
                color: const Color.fromARGB(255, 72, 193, 156),
              ),
              Text(
                'Saved',
                style: TextStyle(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 72, 193, 156),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
                    SizedBox(width:10),
                   MouseRegion(
      onEnter: (_) {
        setState(() {
          _isjobalertHovered = true; // Mouse is hovering
        });
      },
      onExit: (_) {
        setState(() {
          _isjobalertHovered = false; // Mouse has exited
        });
      },
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            _isjobalertPressed = true; // Button is pressed
          });
        },
        onTapUp: (_) {
          setState(() {
            _isjobalertPressed = false; // Button is released
          });
          //Navigator.pushNamed(context, '/'); // Navigate to Account page
        },
        onTapCancel: () {
          setState(() {
            _isjobalertPressed = false; // Cancel press
          });
        },
        child: Container(
          height: 50,
          width: 90,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 72, 193, 156), // Border color
              width: 2, // Border width
            ),
            borderRadius: BorderRadius.circular(6), // Rounded corners
            color: _isjobalertPressed
                ? Colors.grey[300]
                : _isjobalertHovered
                    ? Colors.grey[200]
                    : Colors.white,
            boxShadow: [
              BoxShadow(
                color: _isjobalertPressed
                    ? Colors.transparent
                    : _isjobalertHovered
                        ? Colors.grey.withOpacity(0.5)
                        : Colors.grey.withOpacity(0.2),
                offset: Offset(0, _isjobalertPressed ? 0 : 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_alert_outlined,
                size: 15,
                color: const Color.fromARGB(255, 72, 193, 156),
              ),
              Text(
                'Job Alert',
                style: TextStyle(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 72, 193, 156),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
                    SizedBox(width:10),
                   MouseRegion(
      onEnter: (_) {
        setState(() {
          _isappsHovered = true; // Mouse is hovering
        });
      },
      onExit: (_) {
        setState(() {
          _isappsHovered = false; // Mouse has exited
        });
      },
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            _isappsPressed = true; // Button is pressed
          });
        },
        onTapUp: (_) {
          setState(() {
            _isappsPressed = false; // Button is released
          });
          Navigator.pushNamed(context, '/apps'); // Navigate to Account page
        },
        onTapCancel: () {
          setState(() {
            _isappsPressed = false; // Cancel press
          });
        },
        child: Container(
          height: 50,
          width: 90,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 72, 193, 156), // Border color
              width: 2, // Border width
            ),
            borderRadius: BorderRadius.circular(6), // Rounded corners
            color: _isappsPressed
                ? Colors.grey[300]
                : _isappsHovered
                    ? Colors.grey[200]
                    : Colors.white,
            boxShadow: [
              BoxShadow(
                color: _issavedPressed
                    ? Colors.transparent
                    : _isappsHovered
                        ? Colors.grey.withOpacity(0.5)
                        : Colors.grey.withOpacity(0.2),
                offset: Offset(0, _isappsPressed ? 0 : 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.assignment,
                size: 15,
                color: const Color.fromARGB(255, 72, 193, 156),
              ),
              Text(
                'Applications',
                style: TextStyle(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 72, 193, 156),
                ),
              ),
            ],
          ),
        ),
      ),
    ),

                   ],)),
                   SizedBox(height:40),

            Container(child: Column(
              children: [
                MouseRegion(
      onEnter: (_) {
        setState(() {
          _isprofileHovered = true; // Mouse is hovering
        });
      },
      onExit: (_) {
        setState(() {
          _isprofileHovered = false; // Mouse has exited
        });
      },
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            _isprofilePressed = true; // Button is pressed
          });
        },
        onTapUp: (_) {
          setState(() {
            _isprofilePressed = false; // Button is released
          });
          Navigator.pushNamed(context, '/profile'); // Navigate to Profile page
        },
        onTapCancel: () {
          setState(() {
            _isprofilePressed = false; // Cancel press
          });
        },
        child: Container(
          width: 350,
          padding: EdgeInsets.symmetric(vertical: 12), // Vertical padding for better touch area
          decoration: BoxDecoration(
            color: _isprofilePressed
                ? Colors.grey[300]
                : _isprofileHovered
                    ? Colors.grey[200]
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              SizedBox(width:5),
              Icon(Icons.person_outline_outlined, size: 20, color: const Color.fromARGB(255, 0, 0, 0)),
              SizedBox(width: 20),
              Text(
                'Profile',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Spacer(), // Use Spacer to push the arrow icon to the end
              Icon(Icons.arrow_forward_ios, size: 16, color: const Color.fromARGB(255, 0, 0, 0)),
              SizedBox(width:10),
            ],
          ),
        ),
      ),
    ),

SizedBox(height:10),
 MouseRegion(
      onEnter: (_) {
        setState(() {
          _isjobsHovered = true; // Mouse is hovering
        });
      },
      onExit: (_) {
        setState(() {
          _isjobsHovered = false; // Mouse has exited
        });
      },
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            _isjobsPressed = true; // Button is pressed
          });
        },
        onTapUp: (_) {
          setState(() {
            _isjobsPressed = false; // Button is released
          });
          Navigator.pushNamed(context, '/home'); // Navigate to Profile page
        },
        onTapCancel: () {
          setState(() {
            _isjobsPressed = false; // Cancel press
          });
        },
        child: Container(
          width: 350,
          padding: EdgeInsets.symmetric(vertical: 12), // Vertical padding for better touch area
          decoration: BoxDecoration(
            color: _isjobsPressed
                ? Colors.grey[300]
                : _isjobsHovered
                    ? Colors.grey[200]
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              SizedBox(width:5),
              Icon(Icons.search, size: 20, color: const Color.fromARGB(255, 0, 0, 0)),
              SizedBox(width: 20),
              Text(
                'Jobs',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Spacer(), // Use Spacer to push the arrow icon to the end
              Icon(Icons.arrow_forward_ios, size: 16, color: const Color.fromARGB(255, 0, 0, 0)),
              SizedBox(width:10),
            ],
          ),
        ),
      ),
    ),

SizedBox(height:10),

 MouseRegion(
      onEnter: (_) {
        setState(() {
          _iscompaniesHovered = true; // Mouse is hovering
        });
      },
      onExit: (_) {
        setState(() {
          _iscompaniesHovered = false; // Mouse has exited
        });
      },
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            _iscompaniesPressed = true; // Button is pressed
          });
        },
        onTapUp: (_) {
          setState(() {
            _iscompaniesPressed = false; // Button is released
          });
          Navigator.pushNamed(context, '/companies'); // Navigate to Profile page
        },
        onTapCancel: () {
          setState(() {
            _iscompaniesPressed = false; // Cancel press
          });
        },
        child: Container(
          width: 350,
          padding: EdgeInsets.symmetric(vertical: 12), // Vertical padding for better touch area
          decoration: BoxDecoration(
            color: _iscompaniesPressed
                ? Colors.grey[300]
                : _iscompaniesHovered
                    ? Colors.grey[200]
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              SizedBox(width:5),
              Icon(Icons.business, size: 20, color: const Color.fromARGB(255, 0, 0, 0)),
              SizedBox(width: 20),
              Text(
                'Companies',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Spacer(), // Use Spacer to push the arrow icon to the end
              Icon(Icons.arrow_forward_ios, size: 16, color: const Color.fromARGB(255, 0, 0, 0)),
              SizedBox(width:10),
            ],
          ),
        ),
      ),
    ),


              ],
            ),),
            Spacer(),
Container(
  height:40,
  width:290,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(0),
  ),
  child: ElevatedButton(onPressed: (){
    Navigator.pushNamed(context, '/login');
  }, 
  child: Text('Log out', style: TextStyle(color:Colors.red, fontSize:16),)),
),
SizedBox(height:30),

  ],)),

    );
    
    
    }
    }