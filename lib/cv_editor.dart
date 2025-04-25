import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' ;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:file_picker/file_picker.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';
import 'dart:ui'; // Import for ImageByteFormat
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:open_file/open_file.dart';
import 'dart:typed_data';
import 'package:flutter/rendering.dart';

class Cv_editorpage extends StatefulWidget {
  const Cv_editorpage({super.key});

  @override
  _Cv_editorpageState createState() => _Cv_editorpageState();
}

class _Cv_editorpageState extends State<Cv_editorpage> {
  final TextEditingController _fullNameController = TextEditingController(text: "John Doe");
  final TextEditingController _emailController = TextEditingController(text: "john.doe@example.com");
  final TextEditingController _phoneNumberController = TextEditingController(text: "+1234567890");
  final TextEditingController _countryController = TextEditingController(text: "USA");
  final TextEditingController _cityController = TextEditingController(text: "New York");
  final TextEditingController _dateController = TextEditingController(text: "111");
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  final QuillController _Controller = QuillController.basic();
  final QuillController _Controller2 = QuillController.basic();
  String fullName = 'Jon Don';
  String email = 'testabenezer@gmail.com';  
  String phoneNumber = '25197';
  String birthday = '12/4/2002';
  String country = 'Ethiopia';
  String city = 'Addis Ababa';
  String gender = 'Male';
  String profession = 'Creative arts';
  String richTextContent = "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum";
  String university = 'AAstu';
  String major= '12/4/2002';
  String degree = 'Bachelor';
  String grad_year = '2026';
  String company = 'test company';
  String title= 'software analysis';
  String from = '2022';
  String to = '2025';
  String richTextContent2 = "";
  String profession2 = 'Adaptablity';
  String years_of_exp= '3';
  
@override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _countryController.dispose();
    _cityController.dispose();
    _Controller.dispose();
    super.dispose();
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
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                      ),
                      child: Text(
                        "Resume Builder",
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
                            Text('Personal Information',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ), ),
                        Divider(color:Colors.grey, indent: 20, endIndent:20),
                        SizedBox(height:15),
                        SizedBox(height:15),
                            _buildTextField(
                              label: 'Full name',
                              hintText: '',
                              onChanged: (value) => fullName = value,
                            ),
                            _buildTextField(
                              label: 'Email',
                              hintText: '',
                              onChanged: (value) => email = value,
                            ),
                            _buildTextField(
                              label: 'Phone number',
                              hintText: '',
                              onChanged: (value) => phoneNumber = value,
                            ),
                            _buildDatePickerField(),
                            _buildTextField(
                              label: 'Country',
                              hintText: '',
                              onChanged: (value) => country = value,
                            ),
                             _buildTextField(
                              label: 'City',
                              hintText: '',
                              onChanged: (value) => city = value,
                            ),
                            _buildGenderPickerField(),
                            _buildProfessionPickerField(),
                            _buildRichTextEditor(),
                            SizedBox(height:40),
                              Text('Education',style: TextStyle(
                                
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ), ),
                        Divider(color:Colors.grey, indent: 20, endIndent:20),
                        SizedBox(height:15),
                            _buildUniPickerField(),
                             _buildTextField(
                              label: 'University Major',
                              hintText: '',
                              onChanged: (value) => city = value,
                            ),
                            _buildDegreePickerField(),
                            _buildGraduationPickerField(),
                             SizedBox(height:40),
                              Text('Work Experience',style: TextStyle(
                                
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ), ),
                        Divider(color:Colors.grey, indent: 20, endIndent:20),
                        SizedBox(height:15),
                              _buildTextField(
                              label: 'Company Name',
                              hintText: '',
                              onChanged: (value) => company = value,
                            ),
                             _buildTextField(
                              label: 'Title',
                              hintText: '',
                              onChanged: (value) => title = value,
                            ),
                             _buildFromPickerField(),
                            _buildToPickerField(),
                            _buildRichTextEditor2(),
                              SizedBox(height:40),
                              Text('Skills',style: TextStyle(
                                
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ), ),
                        Divider(color:Colors.grey, indent: 20, endIndent:20),
                        SizedBox(height:15),
                           _buildProfession2PickerField(),
                           _buildTextField(
                              label: 'Years of Experience',
                              hintText: 'Enter your years of experience',
                              onChanged: (value) => years_of_exp = value,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width:150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              child: Text('Close', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          SizedBox(
                            width:150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                setState(() {
                                  richTextContent = _Controller.document.toPlainText();
                                });
                                final delta = _Controller.document.toDelta();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              child: Text('Preview CV', style: TextStyle(color: Colors.white)),
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

  

  Widget _buildTextField({required String label, required String hintText, TextEditingController? controller, required Function(String) onChanged}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.black54, fontSize: 16)),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildDatePickerField() {
    return _buildTextField(
      controller: _dateController,
      label: 'Birthday',
      hintText: 'Select date',
      onChanged: (value) {
        birthday = value;
      },
    );
  }

  Widget _buildGenderPickerField() {
    return _buildTextField(
      controller: _genderController,
      
      label: 'Gender',
      hintText: 'Select Gender',
      onChanged: (value) {
        gender = value;
      },
    );
  }

  Widget _buildProfessionPickerField() {
    return _buildTextField(
      controller: _professionController,
      label: 'Profession',
      hintText: 'Enter your profession',
      onChanged: (value) {
        profession = value;
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
            child: Text('Bio', style: TextStyle(color:Colors.grey, fontSize:16),)),
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
Widget _buildUniPickerField() {
    return _buildTextField(
      
      label: 'University / college',
      hintText: '',
      onChanged: (value) {
        university = value;
      },
    );
  }
  Widget _buildDegreePickerField() {
    return _buildTextField(
     
      label: 'Degree type',
      hintText: '',
      onChanged: (value) {
        degree = value;
      },
    );
  }
  Widget _buildGraduationPickerField() {
    return _buildTextField(
     
      label: 'Graduation year',
      hintText: '',
      onChanged: (value) {
        grad_year = value;
      },
    );
  }
  Widget _buildFromPickerField() {
    return _buildTextField(
      controller: _professionController,
      label: 'From',
      hintText: '',
      onChanged: (value) {
        from = value;
      },
    );
  }
  Widget _buildToPickerField() {
    return _buildTextField(
      controller: _professionController,
      label: 'To',
      hintText: '',
      onChanged: (value) {
        to = value;
      },
    );
  }
  Widget _buildRichTextEditor2() {
    
    return SingleChildScrollView(
      
      child:Column(
        children: [
        SizedBox(height:10),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Description', style: TextStyle(color:Colors.grey, fontSize:16),)),
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
            
            height: 200,
            child: QuillEditor(
              controller: _Controller2,
              
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

Widget _buildProfession2PickerField() {
    return _buildTextField(
      controller: _professionController,
      label: 'Profession',
      hintText: '',
      onChanged: (value) {
        profession2 = value;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      
     appBar: AppBar(
      backgroundColor:Colors.white,
        title: Text(''),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => showPopup(context),
          ),
        ],
      ),
      
     body: SingleChildScrollView(
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
                                child: Text(fullName, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.phone, size: 12, color: Colors.green),
                                  Text(' $phoneNumber', style: TextStyle(fontSize: 14)),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Text('@', style: TextStyle(color: Colors.green, fontSize: 12)),
                                  SizedBox(width: 5),
                                  Text(email, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                                  SizedBox(width: 10),
                                  Icon(Icons.location_on, size: 12, color: Colors.green),
                                  SizedBox(width: 10),
                                
                                    Column(children: [
                                      Text(city,overflow: TextOverflow.ellipsis,
  maxLines: 1, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                                      Text(country,overflow: TextOverflow.ellipsis,
  maxLines: 1, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                                    ],)
                                    
                                  
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.badge, size: 13, color: Colors.green),
                                  SizedBox(width: 5),
                                  Text(profession, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
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
                                    Text(richTextContent),
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
                              SizedBox(
                                width: 300,
                                child: Text('EXPERIENCE', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                              Divider(color: Colors.black, thickness: 4, indent: 10, endIndent: 20, height: 1),
                              SizedBox(height: 5),
                              Text(company, style: TextStyle(color: Colors.black, fontSize: 15)),
                              Text(title, style: TextStyle(color: Colors.green, fontSize: 15)),
                              Row(
                                children: [
                                  Icon(Icons.calendar_month, size: 14, color: Colors.black),
                                  Text(' $from', style: TextStyle(fontSize: 12, color: Colors.black)),
                                  Text(' $to', style: TextStyle(fontSize: 12, color: Colors.black)),
                                ],
                              ),
                              Text(". lorem lope", style: TextStyle(color: Colors.black, fontSize: 13)),
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
                                child: Text('EDUCATION', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                              Divider(color: Colors.black, thickness: 4, indent: 10, endIndent: 20, height: 1),
                              SizedBox(height: 5),
                              Text(university, style: TextStyle(color: Colors.black, fontSize: 15)),
                              Text(degree, style: TextStyle(color: Colors.green, fontSize: 15)),
                              Row(
                                children: [
                                  Icon(Icons.calendar_month, size: 14, color: Colors.black),
                                  Text(' $grad_year', style: TextStyle(fontSize: 12, color: Colors.black)),
                                ],
                              ),
                              Text(". lorem lope", style: TextStyle(color: Colors.black, fontSize: 13)),
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
                              Text('', style: TextStyle(color: Colors.black, fontSize: 15)),
                              Text('', style: TextStyle(color: Colors.green, fontSize: 15)),
                              
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
                              Text('', style: TextStyle(color: Colors.black, fontSize: 15)),
                              Text('', style: TextStyle(color: Colors.green, fontSize: 15)),
                              
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
  )
  
    );
  }
}