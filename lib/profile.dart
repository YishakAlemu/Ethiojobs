import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'dart:async';
class Profilepage extends StatefulWidget {
  const Profilepage({super.key});
  

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  bool _isExpanded = false;
  double _progress = 0.5; // Initialize _progress variable
  String _percentage = "50%"; // Initialize _percentage variable
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  String? _selectedGender;
  final TextEditingController _professionController = TextEditingController();
  String? _selectedprofession;

  void _startLoading() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (_progress < 1.0) {
        setState(() {
          _progress += 0.01; // Increment progress
          _percentage = "${(_progress * 100).toStringAsFixed(0)}%"; // Update percentage text
        });
      } else {
        timer.cancel(); // Stop the timer when loading is complete
      }
    });
  }

  void _showGenderPicker() {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        insetPadding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16, 
          top: MediaQuery.of(context).size.height * 0.6, 
        ),
        backgroundColor: Colors.transparent,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile<String?>(
                  title: Text("", style: TextStyle(color: Colors.white)),
                  value: null,
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value;
                      _genderController.text = '';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                RadioListTile<String?>(
                  title: Text("Male", style: TextStyle(color: Colors.black)),
                  value: "male",
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value;
                      _genderController.text = 'Male';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                RadioListTile<String?>(
                  title: Text("Female", style: TextStyle(color: Colors.black)),
                  value: "female",
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value;
                      _genderController.text = 'Female';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
void _showProfessionPicker(){
               showDialog(
    context: context,
    builder: (context) {
      return SafeArea(
              child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5), // Optional dim background
          body: Center(
                child: Container(
              width: MediaQuery.of(context).size.width * 0.9, 
              height: MediaQuery.of(context).size.height * 0.9,
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
                  
              
                       child:Expanded(
                    child: SingleChildScrollView(
                      child:Column(
                        mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile<String?>(
                  title: Text("", style: TextStyle(color: Colors.white)),
                  value: null,
                  groupValue: _selectedprofession,
                  onChanged: (value) {
                    setState(() {
                      _selectedprofession = value;
                      _professionController.text = '';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                RadioListTile<String?>(
                  title: Text("Accounting and Finance", style: TextStyle(color: Colors.black)),
                  value: "Accounting and Finance",
                  groupValue: _selectedprofession,
                  onChanged: (value) {
                    setState(() {
                      _selectedprofession = value;
                      _professionController.text = 'Accounting and Finance';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                RadioListTile<String?>(
                  title: Text("Admin,Secreterial,Clerical", style: TextStyle(color: Colors.black)),
                  value: "Admin,Secreterial,Clerical",
                  groupValue: _selectedprofession,
                  onChanged: (value) {
                    setState(() {
                      _selectedprofession = value;
                      _professionController.text = 'Admin,Secreterial,Clerical';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                
                RadioListTile<String?>(
                  title: Text("Accounting and Finance", style: TextStyle(color: Colors.black)),
                  value: "Accounting and Finance",
                  groupValue: _selectedprofession,
                  onChanged: (value) {
                    setState(() {
                      _selectedprofession = value;
                      _professionController.text = 'Accounting and Finance';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),RadioListTile<String?>(
                  title: Text("Accounting and Finance", style: TextStyle(color: Colors.black)),
                  value: "Accounting and Finance",
                  groupValue: _selectedprofession,
                  onChanged: (value) {
                    setState(() {
                      _selectedprofession = value;
                      _professionController.text = 'Accounting and Finance';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                
















              ],
                  ),
                  ),
),
            ),
      ),
               ),
            );
}
);
}

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
                  
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    margin:EdgeInsets.only(top:15),
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
                        children: [
                          Row(children: [
                             Text('Full name ', style: TextStyle(color: Colors.black54,fontSize: 16),),
                             Text('*', style: TextStyle(color: Colors.red,fontSize: 16),),
                          ],),
                          SizedBox(height:15),
                          Container(
              height: 50,
              width: 340,
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
               
              ),
                 child: TextField(
                  cursorColor: Colors.black54,
                decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: const Color.fromARGB(255, 220, 213, 213)), // 👈 Change this color
    ),

    // Border when the TextField is focused
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: Colors.brown, width: 2), // 👈 And this one
    ),
                hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                 contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                 border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(25),
                 borderSide: BorderSide(color: const Color.fromARGB(255, 230, 228, 228)), // Optional: customize color
    ),
                ),
               ),
              
            ),
            SizedBox(height:30),
             Row(children: [
                             Text('Email ', style: TextStyle(color: Colors.black54,fontSize: 16),),
                             Text('*', style: TextStyle(color: Colors.red,fontSize: 16),),
                          ],),
                          SizedBox(height:15),
             Container(
              height: 50,
              width: 340,
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
               
              ),
                 child: TextField(
                  cursorColor: Colors.black54,
                decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: const Color.fromARGB(255, 220, 213, 213)), // 👈 Change this color
    ),

    // Border when the TextField is focused
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: Colors.brown, width: 2), // 👈 And this one
    ),
                hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                 contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                 border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(25),
                 borderSide: BorderSide(color: Colors.grey), // Optional: customize color
    ),
                ),
               ),
              
            ),
            SizedBox(height:30),
              Row(children: [
                              Text('Phone number ', style: TextStyle(color: Colors.black54,fontSize: 16),),
                              Text('*', style: TextStyle(color: Colors.red,fontSize: 16),),
                            ],),
                            SizedBox(height:15),
             Container(
              height: 50,
              width: 340,
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
               
              ),
                 child: TextField(
                  cursorColor: Colors.black54,
                decoration: InputDecoration( enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: const Color.fromARGB(255, 220, 213, 213)), 
    ),

    // Border when the TextField is focused
                    focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(25),
                   borderSide: BorderSide(color: Colors.brown, width: 2), 
                  ),

                hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                 contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                 border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.grey), // Optional: customize color
                  ),
                ),
               ),
              
            ),
            SizedBox(height:30),
              Row(children: [
                              Text('Birthday ', style: TextStyle(color: Colors.black54,fontSize: 16),),
                              Text('*', style: TextStyle(color: Colors.red,fontSize: 16),),
                            ],),
                            SizedBox(height:15),
              

Container(
 height: 50,
              width: 340,
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
               
              ),

  child: TextField(
    controller: _dateController,
    readOnly: true, // Prevent manual editing
    cursorColor: Colors.black54,
    decoration: InputDecoration(
      hintText: 'Select date',
      hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: const Color.fromARGB(255, 220, 213, 213)), // Optional: customize color
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: const Color.fromARGB(255, 220, 213, 213)), 
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: Colors.brown, width: 2), 
      ),
      suffixIcon: Icon(Icons.calendar_today), // optional calendar icon
    ),
    onTap: () async {
      DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
      );
  
      if (pickedDate != null) {
        String formattedDate = "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
        _dateController.text = formattedDate;
      }
    },
  ),
),
             SizedBox(height:30),
              Row(children: [
                              Text('Gender ', style: TextStyle(color: Colors.black54,fontSize: 16),),
                              Text('*', style: TextStyle(color: Colors.red,fontSize: 16),),
                            ],),
                            SizedBox(height:15),
         Container(
            height: 50,
              width: 340,
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
               
              ),
  child: TextField(
                controller: _genderController,
                readOnly: true,
                 decoration: InputDecoration(
      hintText: 'Select Gender',
      hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: const Color.fromARGB(255, 220, 213, 213)), // Optional: customize color
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: const Color.fromARGB(255, 220, 213, 213)), 
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: Colors.brown, width: 2), 
      ),
      suffixIcon: Icon(Icons.arrow_drop_down, size:15), // optional calendar icon
    ),
                onTap: _showGenderPicker,
              ),
),


 SizedBox(height:30),
              Row(children: [
                              Text('Profession ', style: TextStyle(color: Colors.black54,fontSize: 16),),
                              Text('*', style: TextStyle(color: Colors.red,fontSize: 16),),
                            ],),
                            SizedBox(height:15),
         Container(
            height: 50,
              width: 340,
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
               
              ),
  child: TextField(
                controller: _genderController,
                readOnly: true,
                 decoration: InputDecoration(
      hintText: '',
      hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: const Color.fromARGB(255, 220, 213, 213)), // Optional: customize color
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: const Color.fromARGB(255, 220, 213, 213)), 
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: Colors.brown, width: 2), 
      ),
      suffixIcon: Icon(Icons.arrow_drop_down), // optional calendar icon
    ),
                onTap: _showProfessionPicker,
              ),
),
                        ],
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
    duration: Duration(milliseconds: 0),
    curve: Curves.easeInOut,
    height: _isExpanded ? 900 : 610, // Height changes based on state
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
        icon: SizedBox(
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
            child: IconButton(
  onPressed: () async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result != null) {
      File file = File(result.files.single.path!);
      // You can now upload or display the image using `file`
      print('Image selected: ${file.path}');
    } else {
      // User canceled the picker
      print('No image selected.');
    }
  },
  icon: Icon(
    Icons.edit,
    size: 24,
    color: Color.fromARGB(255, 72, 193, 156),
  ),
  padding: EdgeInsets.zero, // Removes default padding
  constraints: BoxConstraints(), // Removes default constraints to shrink size
),

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
      SizedBox(height: 30),

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
 
     
      ),
    SizedBox(height:700),
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
  );
  }
}
