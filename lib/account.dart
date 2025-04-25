import 'package:flutter/material.dart';



class Accountpage extends StatefulWidget {
  const Accountpage({super.key});



  @override
  _AccountpageState createState() => _AccountpageState(
    
  );
}

class _AccountpageState extends State<Accountpage> {


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
                    GestureDetector(
  onTap: () {
    Navigator.pushNamed(context, '/saved'); // Navigate to Accountpage
  },
  child:
                    Container(
                      height:50,
                      width: 90,
                      decoration: BoxDecoration(
              border: Border.all(
               color: const Color.fromARGB(255, 72, 193, 156), // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(6), // Optional: Rounded corners
            ),
            child:Column(children: [
              SizedBox(height:7),
              Icon(Icons.bookmark_add_outlined,size: 15,color: const Color.fromARGB(255, 72, 193, 156),),
              Text('saved', style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 72, 193, 156),),)
            ],)
                    ),
                   ),
                    SizedBox(width:10),
                    Container(
                      height:50,
                      width: 90,
                      decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 72, 193, 156), // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(6), // Optional: Rounded corners
            ),
             child:Column(children: [
              SizedBox(height:7),
              Icon(Icons.add_alert_outlined,size: 15,color: const Color.fromARGB(255, 72, 193, 156),),
              Text('Job Alert', style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 72, 193, 156),),)
            ],)
                    ),
                    SizedBox(width:10),
                    GestureDetector(
                      onTap: () {
              Navigator.pushNamed(context, '/apps'); // Navigate to Accountpage
                          },
                      child:
                    Container(
                      height:50,
                      width: 90,
                      decoration: BoxDecoration(
              border: Border.all(
               color: const Color.fromARGB(255, 72, 193, 156), // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(6), // Optional: Rounded corners
            ),
             child:Column(children: [
              SizedBox(height:7),
              Icon(Icons.search,size: 15, color: const Color.fromARGB(255, 72, 193, 156),),
              Text('Application', style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 72, 193, 156),),)
            ],)
                    ),
                   ),

                   ],)),
                   SizedBox(height:40),

            Container(child: Column(
              children: [
                GestureDetector(
  onTap: () {
    Navigator.pushNamed(context, '/profile'); // Navigate to Accountpage
  },
  child: Row(
    children: [
      SizedBox(width:20),
      Icon(Icons.person, size: 20),
      SizedBox(width: 20),
      Text(
        'Profile',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      SizedBox(width:215),// Use Spacer to push the arrow icon to the end
      Icon(Icons.arrow_forward_ios, size: 16),
    ],
  ),
),

SizedBox(height:20),
GestureDetector(
  onTap: () {
    Navigator.pushNamed(context, '/jobs'); // Navigate to Accountpage
  },
  child: Row(
    children: [
      SizedBox(width:20),
      Icon(Icons.search, size: 20),
      SizedBox(width: 20),
      Text(
        'Jobs',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      SizedBox(width:230),// Use Spacer to push the arrow icon to the end
      Icon(Icons.arrow_forward_ios, size: 16),
    ],
  ),
),
SizedBox(height:20),

GestureDetector(
  onTap: () {
    Navigator.pushNamed(context, ''); // Navigate to Accountpage
  },
  child: Row(
    children: [
      SizedBox(width:20),
      Icon(Icons.location_city_outlined, size: 20),
      SizedBox(width: 20),
      Text(
        'Companies',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      SizedBox(width:185),// Use Spacer to push the arrow icon to the end
      Icon(Icons.arrow_forward_ios, size: 16),
    ],
  ),
),

              ],
            ),),
            SizedBox(height:300),
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
)


  ],)),

    );
    
    
    }
    }