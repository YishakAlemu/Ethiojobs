import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:file_picker/file_picker.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';
import 'dart:ui'; // Import for ImageByteFormat
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:flutter_quill/flutter_quill.dart';
import 'package:open_file/open_file.dart';
import 'dart:typed_data';
import 'package:flutter/rendering.dart';
import 'cv_editor.dart';
import 'resume_builder.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});


  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  final TextEditingController _genderController = TextEditingController();
  String? _selectedGender;
  String fullName = 'Jon Don';
  String richTextContent = "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum";
  String email = 'testAbenezer@gmail.com';
  String phoneNumber = '+25197';
  String birthday = '';
  String gender = 'Male';
  String profession = 'Creative Arts';
  int _selectedNavIndex = 3;
  List<Map<String, String>> resumes = [
  {'fileName': 'Recruiter_company'},
  {'fileName': 'Resume.pdf'},
  {'fileName': 'Who_are_we.pdf'},
  {'fileName': 'Jon_Don_.pdf'},
];
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
  final GlobalKey _globalKey = GlobalKey();

Future<String> _generatePdf() async {
  Future.delayed(Duration(milliseconds: 100));
  RenderRepaintBoundary? boundary = _globalKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
  if (boundary == null) {
    throw Exception("Unable to find the boundary.");
  }

  final image = await boundary.toImage(pixelRatio: 3.0);
  final byteData = await image.toByteData(format: ImageByteFormat.png);
  final Uint8List pngBytes = byteData!.buffer.asUint8List();

  // Create PDF Document
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Image(pw.MemoryImage(pngBytes)),
        );
      },
    ),
  );

  final directory = await getApplicationDocumentsDirectory();
  final path = '${directory.path}/cv.pdf';
  final file = File(path);
  await file.writeAsBytes(await pdf.save());

  return path;
}
void showPopup(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Popup",
    transitionDuration: Duration(milliseconds: 200),
    pageBuilder: (context, animation1, animation2) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5),
          body: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
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
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: _buildRichTextEditor(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Text('Close', style: TextStyle(color: Colors.grey)),
                        ),
                        SizedBox(
                          width:130,
                          height:35,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                richTextContent = _Controller.document.toPlainText();
                              });
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text('Save', style: TextStyle(color: Colors.white)),
                          ),
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
 Widget _buildRichTextEditor() {
    
    return SingleChildScrollView(
      
      child:Column(
        children: [
        SizedBox(height:10),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('About you', style: TextStyle(color:Colors.grey, fontSize:16),)),
            SizedBox(height:6),
          Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.grey,
              )
            ),
            
         child: Column(
        children: [
          QuillSimpleToolbar(controller: _Controller), 
          Divider(color:Colors.grey),// Toolbar for rich text editing
          SizedBox(
            
            height: 300,
            child: QuillEditor(
              controller: _Controller,
              
              focusNode: FocusNode(), // Added focusNode
              scrollController: ScrollController(), // Added scrollController
            ),
          ),
        ],
      )
      ),
        ]
      )
    );
  }

// Method to download CV
void _downloadCv(BuildContext context) async {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('Downloading CV...')),
  );

  // Ensure the widget is fully rendered before generating the PDF
  WidgetsBinding.instance.addPostFrameCallback((_) async {
    try {
      String pdfPath = await _generatePdf(); // Generate PDF

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('CV downloaded!'),
          action: SnackBarAction(
            label: 'Open File',
            onPressed: () {
              OpenFile.open(pdfPath);
            },
          ),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to generate CV: $e')),
      );
    }
  });
}
  int? _slide = 1;
  bool _isExpanded = false;
  double progress = 0.5; // Initialize _progress variable
  String _percentage = "50%"; // Initialize _percentage variable
  final TextEditingController _dateController = TextEditingController();
  
  final TextEditingController _professionController = TextEditingController();
  final QuillController _Controller = QuillController.basic();
  String? _selectedprofession;
 

void _updateContainer(Map<String, String> values) {
  setState(() {
    fullName = values['fullName']!;
    email = values['email']!;
    phoneNumber = values['phoneNumber']!;
    birthday = values['birthday']!;
    gender = values['gender']!;
    profession = values['profession']!;
  });
}
void _showDialog() {
    showPopupDialog1(context, _updateContainer);
  }

// Call the dialog

  void _startLoading() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (progress < 1.0) {
        setState(() {
          progress += 0.01; // Increment progress
          _percentage = "${(progress * 100).toStringAsFixed(0)}%"; // Update percentage text
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
                  title: Text("Select Gender", style: TextStyle(color: Colors.black)),
                  value: null,
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value;
                      _genderController.text = ''; // Clear if null is selected
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

void _showProfessionPicker() {
  showDialog(
    context: context,
    builder: (context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5), // Optional dim background
          body: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.6, // Adjusted height
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Option to clear selection
                      RadioListTile<String?>(
                        title: Text("Select Profession", style: TextStyle(color: Colors.black)),
                        value: null,
                        groupValue: _selectedprofession,
                        onChanged: (value) {
                          setState(() {
                            _selectedprofession = value;
                            _professionController.text = ''; // Clear selection
                          });
                          Navigator.pop(context);
                        },
                        activeColor: Colors.blue,
                      ),
                      // Profession options
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
                        title: Text("Admin, Secretarial, Clerical", style: TextStyle(color: Colors.black)),
                        value: "Admin, Secretarial, Clerical",
                        groupValue: _selectedprofession,
                        onChanged: (value) {
                          setState(() {
                            _selectedprofession = value;
                            _professionController.text = 'Admin, Secretarial, Clerical';
                          });
                          Navigator.pop(context);
                        },
                        activeColor: Colors.blue,
                      ),
                      // Add more options as needed
                      RadioListTile<String?>(
                        title: Text("Information Technology", style: TextStyle(color: Colors.black)),
                        value: "Information Technology",
                        groupValue: _selectedprofession,
                        onChanged: (value) {
                          setState(() {
                            _selectedprofession = value;
                            _professionController.text = 'Information Technology';
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
    },
  );
}

void showPopupDialog1(BuildContext context, Function(Map<String, String>) onSave) {
  TextEditingController fullNameController = TextEditingController(text:'Jon don');
  TextEditingController emailController = TextEditingController(text:'testabenezer@gmail.com');
  TextEditingController phoneNumberController = TextEditingController(text:'251978');
  TextEditingController dateController = TextEditingController(text:'12-02-2023');
  String? selectedGender;
  TextEditingController genderController = TextEditingController(text:'');
  TextEditingController professionController = TextEditingController(text: 'Creative Arts');

  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Popup",
    transitionDuration: Duration(milliseconds: 200),
    pageBuilder: (context, animation1, animation2) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5),
          body: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
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
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          // Full Name Field
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
                  controller: fullNameController,
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
                          // Email Field
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
                  controller: emailController,
                  cursorColor: Colors.black54,
                decoration: InputDecoration(
                   enabledBorder: OutlineInputBorder(
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
                          // Phone Number Field
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
                  controller: phoneNumberController,
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
                          // Birthday Field
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
    controller: dateController,
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
        dateController.text = formattedDate;
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
                controller: genderController,
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
                          // Profession Field
                         TextField(
                            controller: professionController,
                            readOnly: true,
                            decoration: InputDecoration(hintText: 'Select Profession'),
                             onTap: _showProfessionPicker,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Button Row
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Save the values to the state variables
                            Map<String, String> values = {
                              'fullName': fullNameController.text,
                              'email': emailController.text,
                              'phoneNumber': phoneNumberController.text,
                              'birthday': dateController.text,
                              'gender': genderController.text,
                              'profession': professionController.text,
                            };

                            // Call the onSave callback to pass the values
                            onSave(values);

                            Navigator.of(context).pop();
                          },
                          child: Text('Save'),
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
  


void _showDeleteDialog(BuildContext context, index, fileName) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor:Colors.black,
        shape: RoundedRectangleBorder(
          
          borderRadius: BorderRadius.circular(23),
          
        ),
        child: Container(
          decoration:BoxDecoration(

             color:Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
         
          width: 360, // Set your desired width
          height: 280, // Set your desired height
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              
              Container(
                height:60,
                width: 60,
                
                decoration: BoxDecoration(
                  color:const Color.fromARGB(255, 225, 223, 223),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.remove_moderator, color:Colors.red, size:35)),
                SizedBox(height:10),
              Text('Remove resume', style:TextStyle(fontSize:17, fontWeight:FontWeight.w700)),
              Text(
                "Are you sure you want to remove $fileName ?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20), // Spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color:Colors.white,
                    ),
                    child: TextButton(

                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
                      },
                      child: Text('Cancel', style:TextStyle(color:Colors.black)),
                    ),
                  ),
                  Container(
                    height: 35,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color:Colors.blue,
                    ),
                    
                    child: ElevatedButton(
                      onPressed: () {
              setState(() {
                resumes.removeAt(index);
              });
              Navigator.of(context).pop();
            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text('Confirm', style:TextStyle(color:Colors.black)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}



quill.QuillController _controller = quill.QuillController.basic();
  bool _isEditing = false;

  void _editText() {
    setState(() {
      _isEditing = true;
    });
  }

  void _closeEditor() {
    setState(() {
      _isEditing = false;
    });
  }

  void _saveChanges() {
    // Implement your save logic here
    setState(() {
      _isEditing = false;
    });
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
backgroundColor: const Color.fromARGB(255, 247, 251, 250),
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
                    backgroundImage: AssetImage('assets/jondon.webp'), ),
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
       onPressed: _showDialog,
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
                  Text(fullName, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 2),
                  Text('Age 22, $gender', style: TextStyle(color: Colors.white, fontSize: 17)),
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
            email,
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
            ' $phoneNumber',
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
                'Profession: $birthday',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                'Carrer Level: $gender',
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
                    value: progress, // Value between 0.0 and 1.0
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
    SizedBox(height:20),
SizedBox(
         height:100,
         child:Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.white),
  child: ListView(children:[
           CupertinoSlidingSegmentedControl<int>(
            padding: EdgeInsets.all(10),
            children:{
              1: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 13), // Increase vertical padding
          child:Text('My Profile'),),
              2: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 13), // Increase vertical padding
          child:Text('CV preview')),
            },
            groupValue: _slide,
            onValueChanged: (int? newValue){
              
              setState(() {
                _slide = newValue;
              
              
            });
            },
  
  
  
           ),
  ])
),
),
  Container(
  constraints: BoxConstraints(
    minHeight: 400, // Set a minimum height
  ),
  child: _getSegment(_slide),
),










  
    ],
  ),
),
bottomNavigationBar: 
      BottomAppBar(
        elevation: 8,
        height:67,
  color: Colors.white,
  child: Container(
    height: 60,
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
        }, 22, const Color.fromARGB(255, 0, 0, 0),0.7),
        buildNavItem(Icons.assignment_outlined, 'My Applications', () {
          Navigator.pushNamed(context, '/apps');
        }, 22, const Color.fromARGB(255, 0, 0, 0),0.7),
        
        buildNavItem(Icons.person_outline_outlined, 'Profile', () {
          Navigator.pushNamed(context, '/profile');
        }, 22, const Color.fromARGB(255, 72, 193, 156),0.7),
      ],
    ),
  ),
),

  );
  }
  
   Widget _buildExpandableTile(String title) {
    switch (title) {
      case 'About':
  return Column(
    children: [
      ExpansionTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Color.fromARGB(255, 72, 193, 156),
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(richTextContent),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width:220),
                    TextButton(
                      onPressed: () {
  _controller = QuillController(
    document: Document()..insert(0, richTextContent),
    selection: const TextSelection.collapsed(offset: 0),
  );
  showPopup(context);
},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, 
                        minimumSize: Size(0, 0), 
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.edit, color: const Color.fromARGB(255, 72, 193, 156),size:13),
                           Text(
                            'Edit',
                            style: TextStyle(fontSize: 13, color: const Color.fromARGB(255, 72, 193, 156), fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      Divider(color: const Color.fromARGB(255, 197, 231, 205), indent: 12, endIndent: 12),
    ],
  );
    
case 'Resume':
        return Column(
          children: [
            ExpansionTile(
              title: Text(title,style: TextStyle(fontSize: 22, fontWeight:FontWeight.w500),),
              trailing: Icon(Icons.keyboard_arrow_down_rounded,color: Color.fromARGB(255, 72, 193, 156)),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
  height: 340,
  width: 320,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 10,
        offset: Offset(0, 0),
      ),
    ],
  ),
  child: ListView.builder(
    itemCount: resumes.length,
    itemBuilder: (context, index) {
      final resume = resumes[index];
      return Column(
        children: [
          SizedBox(height:20),
          if (index != 0)
            Divider(
              color: const Color.fromARGB(255, 197, 231, 205),
              indent: 10,
              endIndent: 12,
            ),
          Row(
            children: [
              SizedBox(width: 15),
              Icon(Icons.file_copy, color: Colors.green[100], size: 25),
              SizedBox(width: 5),
              SizedBox(
                width: 155,
                child: Text(resume['fileName']!, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
              ),
              IconButton(
                icon: Icon(Icons.cloud_download_rounded, color: Color.fromARGB(255, 26, 121, 198), size: 25),
                onPressed: () {
                  // Handle download
                },
              ),
              IconButton(
                icon: Icon(Icons.delete_outline_rounded, color: Colors.black, size: 25),
                onPressed: () {
                  _showDeleteDialog(context, index, resumes[index]['fileName']);
                },
              ),
            ],
          ),
        ],
      );
    },
  ),
),

                      SizedBox(height: 20),
                   
                   SizedBox(height: 10),
                   SizedBox(
                    width:280,
                     child: ElevatedButton(
                               onPressed: () {
                                 
                               },
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 elevation: 4,
                               ),
                               child: const Text(
                                 'Upload Resume',
                                 style: TextStyle(fontSize: 17, color:Colors.white,fontWeight: FontWeight.bold),
                               ),
                             ),
                   ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(color:const Color.fromARGB(255, 197, 231, 205),indent: 12,endIndent: 12),
          ],
        );
        case 'Education':
        return Column(
          children: [
            ExpansionTile(
              title: Text(title,style: TextStyle(fontSize: 22, fontWeight:FontWeight.w500),),
              trailing: Icon(Icons.keyboard_arrow_down_rounded,color: Color.fromARGB(255, 72, 193, 156)),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.0),
                        height:380,
                        width :300,
                        decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              SizedBox(height:25),
                  Text('University or College ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  SizedBox(height:10),
                  Text('Degree type ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text("Bachelor's degree(B.A. or B.Sc.) ", style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('University major ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('Electromechanical Engineering', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('Year ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('YY-MM-DD ', style:TextStyle(fontSize:10, color:Colors.grey)),
                  SizedBox(height:3),
                  Text('2025-04-09', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:25),
                  Row(children:[
                    SizedBox(width:130),
                    TextButton.icon(
                    onPressed: () { },
                    icon: SizedBox(
                      width:12,
                      child: Icon(
                      Icons.edit, size:17,
                      color: Color.fromARGB(255, 72, 193, 156), // Icon color
                                ),
                    ),
                    label: 
                      Text(
                    'Edit', // Button text
                    style: TextStyle(color: Color.fromARGB(255, 72, 193, 156), fontSize:14),) // Text color
                  ),
                    IconButton(icon: Icon(Icons.delete_outline_rounded, 
                  color: Colors.black, 
                  size: 22),
                  onPressed: () { }),
                    
                    ])

                      ])
                      ),
                      SizedBox(height: 20),
                   SizedBox(
                    width:280,
                     child: ElevatedButton(
                               onPressed: () {
                                 
                               },
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 elevation: 4,
                               ),
                               child: const Text(
                                 '+Add Education',
                                 style: TextStyle(fontSize: 17, color:Colors.white,fontWeight: FontWeight.bold),
                               ),
                             ),

                   ),
                     
                    ],
                  ),
                ),
              ],
            ),
            Divider(color:const Color.fromARGB(255, 197, 231, 205),indent: 12,endIndent: 12),
          ],
        );
        case 'Work Experience':
        return Column(
          children: [
            ExpansionTile(
              title: Text(title,style: TextStyle(fontSize: 22, fontWeight:FontWeight.w500),),
              trailing: Icon(Icons.keyboard_arrow_down_rounded,color: Color.fromARGB(255, 72, 193, 156)),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 16.0), 
                        height:380,
                        width :300,
                        decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              SizedBox(height:25),
                  Text('Company name ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('Dereja ', style:TextStyle(fontSize:16, color:Colors.black)),
                  SizedBox(height:10),
                  Text('Title ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text("composity ", style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('From to date ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('YY-MM-DD ', style:TextStyle(fontSize:10, color:Colors.grey)),
                  SizedBox(height:3),
                  Text('2025-04-09 - 2008-11-03', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('Description ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('lorem lope', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:25),
                  Row(children:[
                    SizedBox(width:130),
                    TextButton.icon(
                    onPressed: () { },
                    icon: SizedBox(
                      width:12,
                      child: Icon(
                      Icons.edit, size:17,
                      color: Color.fromARGB(255, 72, 193, 156), // Icon color
                                ),
                    ),
                    label: 
                      Text(
                    'Edit', // Button text
                    style: TextStyle(color: Color.fromARGB(255, 72, 193, 156), fontSize:14),) // Text color
                  ),
                    IconButton(icon: Icon(Icons.delete_outline_rounded, 
                  color: Colors.black, 
                  size: 22),
                  onPressed: () { }),
                    
                    ])

                      ])
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.only(left:16),
                        height:370,
                        width :300,
                        decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              SizedBox(height:25),
                  Text('Company name ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('test company ', style:TextStyle(fontSize:16, color:Colors.black)),
                  SizedBox(height:10),
                  Text('Title ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text("software analysis ", style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('From to date ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('YY-MM-DD ', style:TextStyle(fontSize:10, color:Colors.grey)),
                  SizedBox(height:3),
                  Text('2025-04-09 - invalid date', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('Description ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('lorem lope', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:25),
                  Row(children:[
                    SizedBox(width:130),
                    TextButton.icon(
                    onPressed: () { },
                    icon: SizedBox(
                      width:12,
                      child: Icon(
                      Icons.edit, size:17,
                      color: Color.fromARGB(255, 72, 193, 156), // Icon color
                                ),
                    ),
                    label: 
                      Text(
                    'Edit', // Button text
                    style: TextStyle(color: Color.fromARGB(255, 72, 193, 156), fontSize:14),) // Text color
                  ),
                    IconButton(icon: Icon(Icons.delete_outline_rounded, 
                  color: Colors.black, 
                  size: 22),
                  onPressed: () { }),
                    
                    ])

                      ])
                      ),
                      SizedBox(height:15),
                   SizedBox(
                    width:280,
                     child: ElevatedButton(
                               onPressed: () {
                                 // Handle Apply action
                               },
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 elevation: 4,
                               ),
                               child: const Text(
                                 '+Add Experience',
                                 style: TextStyle(fontSize: 17, color:Colors.white,fontWeight: FontWeight.bold),
                               ),
                             ),
                   ),
                      



                    ],
                  ),
                ),
              ],
            ),
            Divider(color:const Color.fromARGB(255, 197, 231, 205),indent: 12,endIndent: 12),
          ],
        );
        case 'Skills':
        return Column(
          children: [
            ExpansionTile(
              title: Text(title,style: TextStyle(fontSize: 22, fontWeight:FontWeight.w500),),
              trailing: Icon(Icons.keyboard_arrow_down_rounded,color: Color.fromARGB(255, 72, 193, 156)),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left:16),
                        height:750,
                        width :300,
                        decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              SizedBox(height:25),
                  Text('Skills', style:TextStyle(fontSize:16, color:Colors.black)),
                  SizedBox(height:20),
                  Text('Accounting ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('2 years', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                 Text('Adobe photoshop, Indesign ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('2 years', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('Financial Management ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('9 years', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('ACLS ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('6 years', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('Accounting ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('2 years', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('Accounting Management ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('4 years', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  SizedBox(height:25),
                  Row(children:[
                    SizedBox(width:170),
                    TextButton.icon(
                    onPressed: () { },
                    icon: SizedBox(
                      width:12,
                      child: Icon(
                      Icons.edit, size:17,
                      color: Color.fromARGB(255, 72, 193, 156), // Icon color
                                ),
                    ),
                    label: 
                      Text(
                    'Edit', // Button text
                    style: TextStyle(color: Color.fromARGB(255, 72, 193, 156), fontSize:14),) // Text color
                  ),
                   
                     
                    ]),
                     SizedBox(height:20),
                     Divider(color: Color.fromARGB(255, 72, 193, 156),indent:12, endIndent:12),
                     SizedBox(height:20),
                     Text('Language', style:TextStyle(fontSize: 17, color:Colors.black)),
                     SizedBox(height:30),
                      Row(children:[
                    SizedBox(width:170),
                    TextButton.icon(
                    onPressed: () { },
                    icon: SizedBox(
                      width:12,
                      child: Icon(
                      Icons.edit, size:17,
                      color: Color.fromARGB(255, 72, 193, 156), // Icon color
                                ),
                    ),
                    label: 
                      Text(
                    'Edit', // Button text
                    style: TextStyle(color: Color.fromARGB(255, 72, 193, 156), fontSize:14),) // Text color
                  ),
                   
                    
                    ]),
                      ])
                      ),
                      SizedBox(height: 20),
                   SizedBox(
                    width:280,
                     child: ElevatedButton(
                               onPressed: () {
                                 // Handle Apply action
                               },
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 elevation: 4,
                               ),
                               child: const Text(
                                 '+Add Skill or Language',
                                 style: TextStyle(fontSize: 17, color:Colors.white,fontWeight: FontWeight.bold),
                               ),
                             ),
                   ),
                      


                    ],
                  ),
                ),
              ],
            ),
            Divider(color:const Color.fromARGB(255, 197, 231, 205),indent: 12,endIndent: 12),
          ],
        );
        case 'Project and Portfolio':
        return Column(
          children: [
            ExpansionTile(
              title: Text(title,style: TextStyle(fontSize: 22, fontWeight:FontWeight.w500),),
              trailing: Icon(Icons.keyboard_arrow_down_rounded,color: Color.fromARGB(255, 72, 193, 156)),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left:16),
                        height:280,
                        width :300,
                        decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
                  
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                    SizedBox(height:40),
                  Text('Description ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('test', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('Title ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('Link', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:30),
                  Row(children:[
                    SizedBox(width:130),
                    TextButton.icon(
                    onPressed: () { },
                    icon: SizedBox(
                      width:12,
                      child: Icon(
                      Icons.edit, size:17,
                      color: Color.fromARGB(255, 72, 193, 156), // Icon color
                                ),
                    ),
                    label: 
                      Text(
                    'Edit', // Button text
                    style: TextStyle(color: Color.fromARGB(255, 72, 193, 156), fontSize:14),) // Text color
                  ),
                    IconButton(icon: Icon(Icons.delete_outline_rounded, 
                  color: Colors.black, 
                  size: 22),
                  onPressed: () { }),
                    
                    ])

                      ])    ),
                      SizedBox(height: 20),
                   SizedBox(
                    width:280,
                     child: ElevatedButton(
                               onPressed: () {
                                 // Handle Apply action
                               },
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 elevation: 4,
                               ),
                               child: const Text(
                                 '+Add Project and Portfolio',
                                 style: TextStyle(fontSize: 17, color:Colors.white,fontWeight: FontWeight.bold),
                               ),
                             ),
                   ),
                      

                    ],
                  ),
                ),
              ],
            ),
            Divider(color:const Color.fromARGB(255, 197, 231, 205),indent: 12,endIndent: 12),
          ],
        );
        case 'Job preference':
        return Column(
          children: [
            ExpansionTile(
              title: Text(title,style: TextStyle(fontSize: 22, fontWeight:FontWeight.w500),),
              trailing: Icon(Icons.keyboard_arrow_down_rounded,color: Color.fromARGB(255, 72, 193, 156)),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [

                      Container(
                        padding: EdgeInsets.only(left:16),
                        
                        width :300,
                        decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              SizedBox(height:40),
                  Text('Desire employment ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('Consultancy, Internship\nFreelance, contract,partime\nFull time', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('Desired Salary ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('5000 - 7000', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:20),
                  Text('Current Salary ', style:TextStyle(fontSize:16, color:Colors.grey)),
                  Text('200,000 - 300,000', style:TextStyle(fontSize:17, color:Colors.black)),
                  SizedBox(height:30),
                  Row(children:[
                    SizedBox(width:150),
                    TextButton.icon(
                    onPressed: () { },
                    icon: SizedBox(
                      width:12,
                      child: Icon(
                      Icons.edit, size:17,
                      color: Color.fromARGB(255, 72, 193, 156), // Icon color
                                ),
                    ),
                    label: 
                      Text(
                    'Edit', // Button text
                    style: TextStyle(color: Color.fromARGB(255, 72, 193, 156), fontSize:14),) // Text color
                  ),
                    
                    ]),
                    SizedBox(height:40),
            ])),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
          ],
        );
        default:
      return SizedBox.shrink();
  }
   }
  
  Widget _getSegment(int? segment) {
  switch (segment) {
    case 1:  //My profile
    return SingleChildScrollView( // Wrap with SingleChildScrollView for dynamic content
        child: Center(
          child: Column(
            children: [
              
              
              Container(
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
            child: Column(
              children: [
                _buildExpandableTile('About'),
                SizedBox(height: 12),
                _buildExpandableTile('Resume'),
                SizedBox(height: 12),
                _buildExpandableTile('Education'),
                SizedBox(height: 12),
                _buildExpandableTile('Work Experience'),
                SizedBox(height: 12),
                _buildExpandableTile('Skills'),
                SizedBox(height: 12),
                _buildExpandableTile('Project and Portfolio'),
                SizedBox(height: 12),
                _buildExpandableTile('Job preference'),
                
              ],
            ),
          ),
          
        SizedBox(height: 40),

               Container(

                height:800,
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
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ],
            ),
               ),
              
            ],
          ),
        ),
      );
    case 2:
  return SingleChildScrollView(
    child: Center(
      child: Column(
        children: [
          SizedBox(height:20),
            Container(
              width: 366,
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
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 140),
                      SizedBox(
                        width: 165,
                        height: 43,
            child: ElevatedButton(
  onPressed: () async {
    // Call the _downloadCv function when the button is pressed
    _downloadCv(context);
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 26, 121, 198),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    elevation: 2,
  ),
  child: const Text(
    'Download CV',
    style: TextStyle(fontSize: 16, color: Colors.white),
  ),
),

                      ),
                    ],
                  ),
              RepaintBoundary(
                   key: _globalKey,
                  child:Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          
                          child: Column(
                            children: [
                              SizedBox(
                                width: 300,
                                child: Text(' Jon Don', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.phone, size: 12, color: Colors.green),
                                  Text(' 251978', style: TextStyle(fontSize: 14)),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Text('@', style: TextStyle(color: Colors.green, fontSize: 12)),
                                  SizedBox(width: 5),
                                  Text(' testabenezer@gmail.com', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                                  SizedBox(width: 10),
                                  Icon(Icons.location_on, size: 12, color: Colors.green),
                                  SizedBox(width: 10),
                                
                                    Column(children: [
                                      Text(' Addis Ababa',overflow: TextOverflow.ellipsis,
  maxLines: 1, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                                      Text(' Ethiopia',overflow: TextOverflow.ellipsis,
  maxLines: 1, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                                    ],)
                                    
                                  
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.badge, size: 13, color: Colors.green),
                                  SizedBox(width: 5),
                                  Text(' $profession', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 300,
                                child: Text('SUMMARY', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                              Divider(color: Colors.black, thickness: 4, indent: 10, endIndent: 20, height: 1),
                              SizedBox(height: 5),
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Column(
                                  children: [
                                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
  padding: EdgeInsets.only(left: 20),
  child: Column(
    children: [
      // Experience Section
      SizedBox(
        width: 300,
        child: Text(
          'EXPERIENCE',
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      Divider(color: Colors.black, thickness: 4, indent: 10, endIndent: 20, height: 1),
      SizedBox(height: 5),
      Container(
        child: Column(
          children: [
            Text('test Company', style: TextStyle(color: Colors.black, fontSize: 15)),
            Text('software analysis', style: TextStyle(color: Colors.green, fontSize: 15)),
            Row(
              children: [
                Icon(Icons.calendar_month, size: 14, color: Colors.black),
                Text('2018-12-2' ,style: TextStyle(fontSize: 12, color: Colors.black)),
                Text('-', style: TextStyle(color: Colors.grey, fontSize: 20)),
                Text(' undefined', style: TextStyle(fontSize: 12, color: Colors.black)),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 20),

      // Education Section
      Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          children: [
            SizedBox(
              width: 300,
              child: Text(
                'EDUCATION',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(color: Colors.black, thickness: 4,  endIndent: 20, height: 1),
            SizedBox(height: 5),

            // Mapping through educationEntries
           // ...educationEntries.map((entry) {
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bonga University', style: TextStyle(color: Colors.black, fontSize: 15)),
                  Text("bachelor's", style: TextStyle(color: Colors.green, fontSize: 15)),
                  Row(
                    children: [
                      Icon(Icons.calendar_month, size: 14, color: Colors.black),
                      Text(' 2026-04-17', style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: 10), // Add space between entries
                ],
              
            ),
          ],
        ),
      ),
    ],
  ),
),

      

                        
                        SizedBox(height:20),
                        Container(
                          
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 300,
                                child: Text('Languages', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                              Divider(color: Colors.black, thickness: 4, indent: 10, endIndent: 20, height: 1),
                              SizedBox(height: 5),
                              Text(' ', style: TextStyle(color: Colors.black, fontSize: 15)),
                              Text(' ', style: TextStyle(color: Colors.green, fontSize: 15)),
                              
                            ],
                          ),
                        ),
                        SizedBox(height:20),
                        Container(
                          
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 300,
                                child: Text('Skill', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                              Divider(color: Colors.black, thickness: 4, indent: 10, endIndent: 20, height: 1),
                              SizedBox(height: 5),
                              Text(' ', style: TextStyle(color: Colors.black, fontSize: 15)),
                              Text(' ', style: TextStyle(color: Colors.black, fontSize: 15)),
                              Text(' ', style: TextStyle(decoration: TextDecoration.underline,color: Colors.black, fontSize: 15)),
                              
                            ],
                          ),
                        ),
                        SizedBox(height:20),
                        Container(
                          
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 300,
                                child: Text('Project and Portfolio', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                              Divider(color: Colors.black, thickness: 4, indent: 10, endIndent: 20, height: 1),
                              SizedBox(height: 5),
                              Text('', style: TextStyle(color: Colors.black, fontSize: 15)),
                              Text('', style: TextStyle(color: Colors.green, fontSize: 15)),
                              
                            ],
                          ),
                        ),
    
                      ],
                    ),
                  ),
              ),
                ],
              ),
            ),
          SizedBox(height:30),
        ],
      ),
    ),
  );
    default:
      return Center(child: Text('Select an option.'));
  }
}
}