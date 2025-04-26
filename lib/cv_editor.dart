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
   bool isChecked = false;
   
  final TextEditingController _fullNameController = TextEditingController(text: "John Doe");
  final TextEditingController _emailController = TextEditingController(text: "john.doe@example.com");
  final TextEditingController _phoneNumberController = TextEditingController(text: "+1234567890");
  final TextEditingController _countryController = TextEditingController(text: "USA");
  final TextEditingController _cityController = TextEditingController(text: "New York");
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  final QuillController _Controller = QuillController.basic();
  final QuillController _Controller2 = QuillController.basic();
  String? _selectedGender;
  String fullName = 'Jon Don';
  String email = 'testabenezer@gmail.com';  
  String phoneNumber = '25197';
  String birthday = '12/4/2002';
  String country = 'Ethiopia';
  String city = 'Addis Ababa';
  String gender = '';
  
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
  final List<String> skills = [
    'Flutter',
    'Dart',
    'Firebase',
    'Python',
    'JavaScript',
    'UI/UX',
    'Spring',
    'Django',
  ];
  
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
                            _buildDatePickerField(
                            ),
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
                            
                            
                               SizedBox(height:30),
                        ...educationEntries.asMap().entries.map((entry) {
          int index = entry.key;
          var value = entry.value;
          return _buildEducationContainer(
            university: value['university'] ?? '',
            degree: value['degree'] ?? '',
            grad_year: value['grad_year'] ?? '',
            onDelete: () => _removeEducation(index), // Pass the delete function
          );
        }),
      
      
                              SizedBox(height:5),
                              ElevatedButton(
        onPressed: () {
    _addEducation(context); // Open the education dialog
  },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 26, 121, 198),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 4,
        ),
        child: const Text(
          '+ Add Education',
          style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
                             SizedBox(height:60),
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
                            
                            Row(
                 children: [
                  SizedBox(width:10),
                   Checkbox(
                                 value: isChecked,
                                 activeColor: const Color.fromARGB(255, 26, 121, 198),
                                 onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false; // Update state
                    });
                                 },
                               ),
                    Text('I currently work here', style: TextStyle(color:Colors.grey,fontSize: 18),),
                 ],
               ),
                            _buildRichTextEditor2(),
                            ElevatedButton(
        onPressed: () {
     // Open the education dialog
  },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 26, 121, 198),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 4,
        ),
        child: const Text(
          '+ Add Work Experience',
          style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
                             
                              SizedBox(height:60),
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
                            ElevatedButton(
        onPressed: () {
     // Open the education dialog
  },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 26, 121, 198),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 4,
        ),
        child: const Text(
          '+ Add Skill',
          style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(height:5),
       Container(
        padding: EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 8.0, // Horizontal space between chips
          runSpacing: 4.0, // Vertical space between rows of chips
          children: skills.map((skill) {
            return Chip(
              label: Text(skill),
              deleteIcon: Icon(Icons.remove_circle_outline),
              onDeleted: () {
                setState(() {
                  skills.remove(skill); // Remove the skill from the list
                });
                
              },
              backgroundColor: Colors.blue[100], // Optional: Background color
            );
          }).toList(),
        ),
      ),
                             SizedBox(height:60),

                              Text('Add language skills',style: TextStyle(
                                
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ), ),
                        Divider(color:Colors.grey, indent: 20, endIndent:20),
                        SizedBox(height:15),



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

  

  Widget _buildTextField({
  required String label,
  required String hintText,
  TextEditingController? controller,
  required Function(String) onChanged,
  bool isDatePicker = false,
  List<String>? dropdownItems,
  String? selectedValue,
  Function(String?)? onDropdownChanged,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: TextStyle(color: Colors.black54, fontSize: 16)),
      SizedBox(height: 8),
      if (isDatePicker)
        GestureDetector(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2101),
            );

            if (pickedDate != null) {
              String formattedDate = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
              controller?.text = formattedDate; // Update text field
              onChanged(formattedDate); // Call onChanged
            }
          },
          child: AbsorbPointer(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(),
              ),
            ),
          ),
        )
      else if (dropdownItems != null && onDropdownChanged != null)
        DropdownButton<String>(
          value: selectedValue,
          hint: Text(hintText),
          isExpanded: true,
          items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            onDropdownChanged(value);
            if (controller != null) {
              controller.text = value ?? ''; // Update text field if controller is provided
            }
          },
        )
      else
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
  return GestureDetector(
    onTap: () async {
      DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2101),
      );

      if (pickedDate != null) {
        String formattedDate = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
        _dateController.text = formattedDate; // Update the controller's text
        birthday = formattedDate; // Update the variable
      }
    },
    child: AbsorbPointer(
      child: _buildTextField(
        controller: _dateController,
        label: 'Birthday',
        hintText: 'Select date',
        onChanged: (value) {
          birthday = value; // Still keep this to manage changes
        },
      ),
    ),
  );
}

Widget _buildGenderPickerField() {
  return GestureDetector(
    onTap: () {
      _showGenderSelectionDialog(); // Show dialog with radio buttons
    },
    child: AbsorbPointer(
      child: _buildTextField(
        controller: _genderController,
        label: 'Gender',
        hintText: 'Select Gender',
        onChanged: (value) {
          birthday = value; // Still keep this to manage changes
        },
       
          // Optional icon
        ),
      
    ),
  );
}

void _showGenderSelectionDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Select Gender'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<String?>(
              title: Text("Male"),
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value ?? '';
                  _genderController.text = 'Male'; // Update the text controller
                });
                Navigator.pop(context); // Close the dialog
              },
            ),
            RadioListTile<String?>(
              title: Text("Female"),
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value ?? '';
                  _genderController.text = 'Female'; // Update the text controller
                });
                Navigator.pop(context); // Close the dialog
              },
            ),
            RadioListTile<String?>(
              title: Text("Other"),
              value: "other",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value ?? '';
                  _genderController.text = 'Other'; // Update the text controller
                });
                Navigator.pop(context); // Close the dialog
              },
            ),
          ],
        ),
      );
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
  List<Map<String, String>> educationEntries = [];

  void _addEducation(BuildContext context) {
    // Dummy data for demonstration; replace with actual data entry logic
    setState(() {
      educationEntries.add({
        'university': university,
        'degree': degree,
        'grad_year': grad_year,
      });
    });
  }
  void _removeEducation(int index) {
    setState(() {
      if (index >= 0 && index < educationEntries.length) {
        educationEntries.removeAt(index); // Remove the entry at the specified index
      }
    });
  }
  Widget _buildEducationContainer({
  required String university,
  required String degree,
  required String grad_year,
  required VoidCallback onDelete, // Added onDelete parameter
}) {
  return Container(
                              child: Column(
                                children: [
                                  Row(children: [
                                    SizedBox(width:30),
                                    Text('Education',style: TextStyle(
                                  
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ), ),
                        SizedBox(width:150),
                        IconButton(onPressed: onDelete, 
                        icon: Icon(Icons.delete, color:Colors.red, size:18))],),
                        Divider(color:Colors.grey, indent: 20, endIndent:20, height: 0),
                        SizedBox(height:15),
                            _buildUniPickerField(),
                             _buildTextField(
                              label: 'University Major',
                              hintText: '',
                              onChanged: (value) => city = value,
                            ),
                            _buildDegreePickerField(),
                            _buildGraduationPickerField(),],
                              ));
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
  
  Widget _buildChip(String label, Function onDeleted) {
    return Chip(
      label: Text(label),
      deleteIcon: Icon(Icons.remove_circle_outline),
      onDeleted: () => onDeleted(),
      backgroundColor: Colors.blue[100], // Optional: Background color
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
        child: Text(
          'EDUCATION',
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      Divider(color: Colors.black, thickness: 4, indent: 10, endIndent: 20, height: 1),
      SizedBox(height: 5),
      
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
      }).toList(),
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