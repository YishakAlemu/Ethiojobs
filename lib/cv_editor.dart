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
import 'resume_builder.dart';

class Cv_editorpage extends StatefulWidget {
  const Cv_editorpage({super.key});

  @override
  _Cv_editorpageState createState() => _Cv_editorpageState();
}

class _Cv_editorpageState extends State<Cv_editorpage> {
   bool isChecked = false;
   
  final TextEditingController _fullNameController = TextEditingController(text: "Jon Don");
  final TextEditingController _emailController = TextEditingController(text: "testabenezer@gmail.com");
  final TextEditingController _phoneNumberController = TextEditingController(text: "25197");
  final TextEditingController _countryController = TextEditingController(text: "Ethiopia");
  //final TextEditingController _cityController = TextEditingController(text: "Addis Ababa");
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  final QuillController _Controller = QuillController.basic();
  final QuillController _Controller2 = QuillController.basic();
  final QuillController _Controller3 = QuillController.basic();
  String? _selectedGender;
  String fullName = 'Jn don';
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
  
   List<Map<String, String>> educationEntries = [
    {
      'university': 'Addis Ababa University',
      'degree': 'Bachelor of Science in Computer Science',
      'grad_year': '2026',
    },
    {
      'university': 'Harvard University',
      'degree': 'Master of Business Administration',
      'grad_year': '2028',
    },
  ];
  String title= 'software analysis';
  String from = '2022';
  String to = '2025';
  String richTextContent2 = "";
  String profession2 = '';
  String years_of_exp = '';
  List<String> skills = [
    'Flutter',
    'Dart',
    'Firebase',
    'Python',
    'JavaScript',
    'UI/UX',
    'Spring',
    'Django',
  ];
  String language = '';
  String level = '';
   
@override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _countryController.dispose();
    //_cityController.dispose();
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

  
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      
     appBar: AppBar(
      backgroundColor:Colors.white,
        title: Text(''),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () async {
  final updatedData = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Resume_builderpage()),
  );

  if (updatedData != null) {
    setState(() {
      fullName = updatedData['fullName'] ?? fullName;
      email = updatedData['email'] ?? email;
      phoneNumber = updatedData['phoneNumber'] ?? phoneNumber;
      country = updatedData['country'] ?? country;
      city = updatedData['city'] ?? city;
      gender = updatedData['gender'] ?? gender;
      profession = updatedData['profession'] ?? profession;
      richTextContent = updatedData['richTextContent'] ?? richTextContent;
      educationEntries = List<Map<String, String>>.from(updatedData['educationEntries'] ?? educationEntries);
         company = updatedData['company'] ?? company;
          major = updatedData['major'] ?? major;
           title = updatedData['title'] ?? title;
           from = updatedData['from'] ?? from;
            to = updatedData['to'] ?? to;
             richTextContent2 = updatedData['richTextContent2'] ?? richTextContent2;
               profession2 = updatedData ['profession2'] ?? profession2;
                years_of_exp = updatedData ['years_of_exp'] ?? years_of_exp;
                 skills = updatedData ['skills'] ?? skills;
                
                
    });
  }
},
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
                                child: Text(' $fullName', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
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
                                  Text(' $email', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                                  SizedBox(width: 10),
                                  Icon(Icons.location_on, size: 12, color: Colors.green),
                                  SizedBox(width: 10),
                                
                                    Column(children: [
                                      Text(' $city',overflow: TextOverflow.ellipsis,
  maxLines: 1, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                                      Text(' $country',overflow: TextOverflow.ellipsis,
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
                                    Text(' $richTextContent'),
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
            Text(company, style: TextStyle(color: Colors.black, fontSize: 15)),
            Text(title, style: TextStyle(color: Colors.green, fontSize: 15)),
            Row(
              children: [
                Icon(Icons.calendar_month, size: 14, color: Colors.black),
                Text(' $from ', style: TextStyle(fontSize: 12, color: Colors.black)),
                Text('-', style: TextStyle(color: Colors.grey, fontSize: 20)),
                Text(' $to', style: TextStyle(fontSize: 12, color: Colors.black)),
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
            Divider(color: Colors.black, thickness: 4, indent: 10, endIndent: 20, height: 1),
            SizedBox(height: 5),

            // Mapping through educationEntries
            ...educationEntries.map((entry) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(entry['university'] ?? '', style: TextStyle(color: Colors.black, fontSize: 15)),
                  Text(entry['degree'] ?? '', style: TextStyle(color: Colors.green, fontSize: 15)),
                  Row(
                    children: [
                      Icon(Icons.calendar_month, size: 14, color: Colors.black),
                      Text(' ${entry['grad_year'] ?? ''}', style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: 10), // Add space between entries
                ],
              );
            }),
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
                              Text(' $language', style: TextStyle(color: Colors.black, fontSize: 15)),
                              Text(' $level', style: TextStyle(color: Colors.green, fontSize: 15)),
                              
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
                              Text(' $profession2', style: TextStyle(color: Colors.black, fontSize: 15)),
                              Text(' $years_of_exp', style: TextStyle(color: Colors.black, fontSize: 15)),
                              Text(' $skills', style: TextStyle(decoration: TextDecoration.underline,color: Colors.black, fontSize: 15)),
                              
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