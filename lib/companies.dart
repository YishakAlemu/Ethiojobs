import 'package:flutter/material.dart';
import 'search2.dart';
import 'home.dart';



class Companiespage extends StatefulWidget {
  final Function(String job) onJobSelected;

  const Companiespage({super.key, required this.onJobSelected});

  @override
  _CompaniespageState createState() => _CompaniespageState();
}

class _CompaniespageState extends State<Companiespage> {
  bool _isHovered = false;
  // Hardcoded list of jobs
  final List<Job> allJobs = [
   Job(title: 'Senior FullStack Developer', date: 'april 1st, 2025',time: '15d', company: 'ETHIOJOBS AND AFRINET', type: 'Full-time', location: 'Addis Ababa',imageUrl: 'assets/ethiojobs.webp'),
    Job(title: 'HR Manager', date: 'April 11th, 2025',time: '2d',company: 'AHADU BANK', type: 'Part-time', location: 'Dire Dawa',imageUrl: 'assets/ahadu_logo.png'),
    Job(title: 'Sales Manager', date: 'April 20th, 2025',time: '1s',company: 'DASHIN BANK', type: 'Full-time', location: 'Gondar',imageUrl: 'assets/dashin_logo.png'),
    Job(title: 'IT Assistant', date: ' April 10th, 2025',time: '1mo',company: 'AMREF HEALTH AFRICA', type: 'Internship', location: 'Bahir Dar',imageUrl: 'assets/amref_logo.png'),
  ];
final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose(); // Dispose the controller
    super.dispose();
  }
  String? _selectedValue = '';
  int _selectedNavIndex = 1;
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
  @override
  Widget build(BuildContext context) {
    final Map<IconData, IconData> iconMapping = {
  Icons.business_outlined: Icons.business,
  Icons.assignment_outlined: Icons.assignment,
  Icons.person_outline_outlined: Icons.person,
  // Add other mappings as needed
};
     Widget buildNavItem(IconData icon, String label, VoidCallback onTap,double iconSize,Color iconColor,double scaleFactor,) {
    bool isSelected = _selectedNavIndex == _getIndex(label);
    IconData displayIcon = isSelected ? iconMapping[icon] ?? icon : icon;
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
    displayIcon, // Your icon
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
      backgroundColor: Colors.white,
      body: Column(
                 children: [
               Container(
                
                     height: 150,
                     width:700,
                 color: const Color.fromARGB(255, 72, 193, 156),// Background color for the first container
               child: Column(
          children: [
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10),
                SizedBox(
                  height: 50,
                  width: 320,
                  
                  
                  child: Center(
                    child: Text(
                     'Find Companies',
                      style: TextStyle(color: const Color.fromARGB(255, 255, 255,255), fontSize: 17), // Changed color for visibility
                   ),
                 ),
                ),
              ],
            ),
            Row(
              children: [
             SizedBox(width: 15),
                Container(
                
                  height: 45,
                  width: 300,
                  margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.grey, // Border color
                      width: 1, // Border width
                    ),
                   
                  ),
                 child: Center(
                  child: TextField(
                    controller: _searchController,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "Search Companies",
                      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                      contentPadding: EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 4.0, top: 6), // Add some padding
                        child: Icon(Icons.search, color: const Color.fromARGB(255, 72, 193, 156)), // Search icon
                      ),
                    ),
                    onTap: () {
                        Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Search2page(allJobs: allJobs),
                ),
              );
                      },
                  ),
                ),
                ),
                
                SizedBox(width: 7),
                Container(
                  height: 42,
                  decoration:BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color:Colors.grey, width: 1),
                  ),
                 
                  child: IconButton(onPressed: (){
                            Navigator.pushNamed(context, '/filter');
                          }, 
                          icon: Icon(Icons.tune, color:const Color.fromARGB(255, 72, 193, 156),size: 20,)),
                )

              ],
              
            ),

SizedBox(height:20),
    //   SizedBox(
      
    //   height:45,
      
      
    //   child: Row(children: [
    //     SizedBox(width:130),
    //         SizedBox(
    //           height:35,
    //           width:120,
              
    //           child: ElevatedButton(onPressed: () {
    //                Navigator.pushNamed(context, '/filter');
    //                                     },
    //           style: ElevatedButton.styleFrom(
    //                             backgroundColor: Colors.white,
    //                            shape: RoundedRectangleBorder(
    //                           borderRadius: BorderRadius.circular(6), 
                              
    // ),),
    //            child: Row(children: [
    //             Icon(Icons.tune, color:Colors.black),
    //             SizedBox(width:5),
    //             Text('Filter', style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400)),
                
    //            ],)),
    //         ),
    //          SizedBox(width:30),
             


    //   ],),
    // ),
          ]
        ),
    ),

 
  
          
           
            
            
            Expanded(
              child: ListView.builder(
                itemCount: allJobs.length,
                itemBuilder: (context, index) {
                  return _buildJobCard(context, allJobs[index]);
                },
              ),
            ),
          
        
 

                  
                 ]
                 ),
      
      bottomNavigationBar: 
      BottomAppBar(
        height:67,
        elevation: 8,
  color: Colors.white,
  child: Container(
    
    padding: EdgeInsets.symmetric(horizontal: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:  [
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
        }, 22, const Color.fromARGB(255, 72, 193, 156),0.7),
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

  Widget _buildJobCard(BuildContext context, Job job) {
    return MouseRegion(
      onEnter: (_) {
            setState(() {
              _isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHovered = false;
            });
          },
      child: InkWell(
        onTap: () {
            Navigator.pushNamed(context, '/apply');
        },
        child: Container(
          color:Colors.white,
          margin: EdgeInsets.symmetric(vertical: 8.0),
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
                            children: [
                              SizedBox(width:20),
                              Container(
                                  
                                  width: 40, 
                                  height: 40, 
                                  child: ClipRect( 
                                  child: Image.asset(
                                  job.imageUrl, 
                                   fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio while filling the container
                                      ),
                                     ),
                                      ),
                                    SizedBox(width:10),
                                     Container(
                                     // margin: EdgeInsets.only(left: 0),
                                       child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start, // Aligns items at the start
                                        crossAxisAlignment: CrossAxisAlignment.start, 
                                         children: [
                                            SizedBox(height:5),
                                            Text(
                                              job.company,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black, // Text color
                                              ),
                                              overflow: TextOverflow.ellipsis, // Enable ellipsis
                                              maxLines: 1, // Limit to one line
                                            ),
                                            SizedBox(height:5),
                                                   Row(
                                                     children: [
                                                      Text('2 Jobs', style: TextStyle(color:Colors.grey, fontSize:11),),
                                                      SizedBox(width:5),
                                                      Row(children: [
                                                         Icon(Icons.location_on_outlined, color:Colors.grey, size: 15),
                                                         
                                                         Text(job.location, style: TextStyle(color:Colors.grey, fontSize:11),),
                                                      ],)
                                                           ],
                                                         ),
                                         ],
                                         
                                       ),
                                     ),
                            ],
                          ),
                          
            
                          
                       SizedBox(height:15), ],),
                          
                        ),
        ),
      ),
    );
  }
}