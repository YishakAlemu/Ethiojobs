import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
class Resume_builderpage extends StatefulWidget {
  const Resume_builderpage({super.key});

  @override
  _Resume_builderpageState createState() => _Resume_builderpageState();
}

class _Resume_builderpageState extends State<Resume_builderpage> {
  bool isChecked = false;
   
  final TextEditingController fullNameController = TextEditingController(text: "John Doe");
  final TextEditingController emailController = TextEditingController(text: "john.doe@example.com");
  final TextEditingController phoneNumberController = TextEditingController(text: "+1234567890");
  final TextEditingController countryController = TextEditingController(text: "USA");
  final TextEditingController cityController = TextEditingController(text: "New York");
  final TextEditingController dateController = TextEditingController();
  final TextEditingController dateController2 = TextEditingController();
  final TextEditingController dateController3 = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController professionController = TextEditingController();
  final TextEditingController professionController2 = TextEditingController();
  final QuillController _Controller = QuillController.basic();
   final QuillController _controller = QuillController.basic();
  final QuillController _Controller2 = QuillController.basic();
  final QuillController _Controller3 = QuillController.basic();
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
  String languges = '';
 
  String? selectedLanguage;
  List<String> languages = ['Arabic', 'English', 'French', 'Portuguese'];
  
  String? selectedLevel;
  List<String> levels = ['Basic','Intermidiate',  'Proficient',  'Fluent', 'Native'];
  String richTextContent3 = "";
  String insert_title = '';
  String insert_link = '';
void _showGenerateCVDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
         width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
        
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
                  height:40,
                  width: 40,
                  
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 225, 223, 223),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.file_open_sharp, color:Colors.grey, size:22)),
                  SizedBox(height:10),
                 Row(
                   children: [
                    SizedBox(width:0),
                     Text('Your CV is generated successfully!', style:TextStyle(fontSize:17, fontWeight:FontWeight.w700)),
                   ],
                 ),
                SizedBox(height:10),
                Text(
                  "Your CV is generated and saved \nin your profle, you can apply form here",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Container(
                  height:80,
                  width:220,
                  decoration:BoxDecoration(
                  border: Border.all(color:Colors.grey, width: 1),
                  )
                ), 
                SizedBox(height: 20),
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
                // setState(() {
                //   resumes.removeAt(index);
                // });
                // Navigator.of(context).pop();
              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: Text('Apply', style:TextStyle(color:Colors.black)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            children: [
             Container(
                      
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
                    Container(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Container(
                            
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
                                  buildTextField(
                                    label: 'Full name',
                                    hintText: '',
                                    onChanged: (value) => fullName = value,
                                  ),
                                  
                                  buildTextField(
                                    label: 'Email',
                                    hintText: '',
                                    onChanged: (value) => email = value,
                                  ),
                                  buildTextField(
                                    label: 'Phone number',
                                    hintText: '',
                                    onChanged: (value) => phoneNumber = value,
                                  ),
                                  _buildDatePickerField(
                                  ),
                                  buildTextField(
                                    label: 'Country',
                                    hintText: '',
                                    onChanged: (value) => country = value,
                                  ),
                                   buildTextField(
                                    label: 'City',
                                    hintText: '',
                                    onChanged: (value) => city = value,
                                  ),
                                  _buildGenderPickerField(),
                                  _buildProfessionPickerField(),
                                  _buildRichTextEditor(),
                                ],
                              ),
                            ),
                            
                            
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
                              buildTextField(
                              label: 'Company Name',
                              hintText: '',
                              onChanged: (value) => company = value,
                            ),
                             buildTextField(
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
                            SizedBox(height:10),
                            Row(
                              children: [
                                SizedBox(width:120),
                                SizedBox(
                                   height:30,
                                  width:230,
                                  child: ElevatedButton(
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
                                ),
                              ],
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
                           buildTextField(
                              label: 'Years of Experience',
                              hintText: 'Enter your years of experience',
                              onChanged: (value) => years_of_exp = value,
                            ),
                            SizedBox(
                               height:30,
                               width:220,
                              child: ElevatedButton(
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
                        Container(
                    alignment: Alignment.centerLeft, // Aligns the child to the left
                        child: Text(
                              'Select Language',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                                  ),
                        ),
                        SizedBox(height:5),
                        _buildlanguagePickerField(),
                        SizedBox(height:10),
                        Container(
                alignment: Alignment.centerLeft, // Aligns the child to the left
                            child: Text(
                             'Level',
                         style: TextStyle(color: Colors.grey, fontSize: 18),
                               ),
                        ),
                        SizedBox(height:5),
                        _buildlevelPickerField(),
                        SizedBox(height:60),
                        SizedBox(
                          height:30,
                          width:220,
                          child: ElevatedButton(
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
                                    '+ Add Language',
                                    style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ),
                        ),
                       SizedBox(height: 60,),


                                  ...projectEntries.asMap().entries.map((entry) {
          int index = entry.key;
          var value = entry.value;
          return _buildProjectContainer(
            richTextContent3: value['richTextContent3'] ?? '',
            insert_title: value['university'] ?? '',
            insert_link: value['degree'] ?? '',
           
            onDelete: () => _removeProject(index), // Pass the delete function
          );
        }),
                              SizedBox(height:5),
                              ElevatedButton(
        onPressed: () {
    _addProject(context); // Open the education dialog
  },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 26, 121, 198),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 4,
        ),
        child: const Text(
          '+ Add Project',
          style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),


                          ],
                        ),
                      ),
                    ),
                    
            ],
          ),
        
      ),
      bottomNavigationBar: BottomAppBar(
        color:Colors.white,
         child:Container(
          
                     
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            width:160,
                            height:40,
                            child: ElevatedButton(
                              onPressed: () {
                                _showGenerateCVDialog(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                               shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3), 
                              
    ),),
                              
                              
                             
                              child: Text('Generate CV', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          SizedBox(
                            width:150,
                            height:40,
                            child: ElevatedButton(
                              onPressed: () {
  setState(() {
    richTextContent = _Controller.document.toPlainText();
  });
  Navigator.of(context).pop({
    'fullName': fullName,
    'email': email,
    'phoneNumber': phoneNumber,
    'country': country,
    'city': city,
    'gender': gender,
    'profession': profession,
    'richTextContent': richTextContent,
     'university' : university,
      'major': major,
      'degree' : degree,
   'grad_year' : grad_year,
   'company' : company,
  'title': title,
   'from' : from,
      'to' : to,
   'richTextContent2' : richTextContent2,

  });
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
      ),
    );
  }

 Widget buildTextField({
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
        dateController.text = formattedDate; // Update the controller's text
        birthday = formattedDate; // Update the variable
      }
    },
    child: AbsorbPointer(
      child: buildTextField(
        controller: dateController,
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
      child: buildTextField(
        controller: genderController,
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
                  genderController.text = 'Male'; // Update the text controller
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
                  genderController.text = 'Female'; // Update the text controller
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
                  genderController.text = 'Other'; // Update the text controller
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
    return buildTextField(
      controller: professionController,
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
    return buildTextField(
      
      label: 'University / college',
      hintText: '',
      onChanged: (value) {
        university = value;
      },
    );
  }
  Widget _buildDegreePickerField() {
    return buildTextField(
     
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
                             buildTextField(
                              label: 'University Major',
                              hintText: '',
                              onChanged: (value) => city = value,
                            ),
                            _buildDegreePickerField(),
                            _buildGraduationPickerField(),],
                              ));
}
  Widget _buildGraduationPickerField() {
    return buildTextField(
     
      label: 'Graduation year',
      hintText: '',
      onChanged: (value) {
        grad_year = value;
      },
    );
  }
  
  Widget _buildFromPickerField() {
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
        dateController2.text = formattedDate; // Update the controller's text
        from = formattedDate; // Update the variable
      }
    },
    child: AbsorbPointer(
      child: buildTextField(
        controller: dateController2,
        label: 'From',
        hintText: '',
        onChanged: (value) {
          from = value; // Still keep this to manage changes
        },
      ),
    ),
  );
}
  Widget _buildToPickerField() {
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
        dateController3.text = formattedDate; // Update the controller's text
        to = formattedDate; // Update the variable
      }
    },
    child: AbsorbPointer(
      child: buildTextField(
        controller: dateController3,
        label: 'To',
        hintText: '',
        onChanged: (value) {
          to = value; // Still keep this to manage changes
        },
      ),
    ),
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
    return buildTextField(
      controller: professionController2,
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
  Widget _buildlanguagePickerField() {
    return DropdownButtonFormField<String>(
      value: selectedLanguage,
      hint: Text('Select a language'),
      items: languages.map((String language) {
        return DropdownMenuItem<String>(
          value: language,
          child: Text(language),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedLanguage = newValue;
        });
        _languageSelected(newValue);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        
      ),
    );
  }

  void _languageSelected(String? language) {
    // Handle language selection
    if (language != null) {
      print('Selected Language: $language');
    }
  }
Widget _buildlevelPickerField() {
    return Container(
      child: DropdownButtonFormField<String>(
        value: selectedLevel,
        hint: Text('Select a level'),
        items: levels.map((String level) {
          return DropdownMenuItem<String>(
            value: level,
            child: Text(level),
          );
        }).toList(),
        
        onChanged: (String? newValue) {
          setState(() {
            selectedLevel = newValue;
          });
          _levelSelected(newValue);
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          
        ),
      
      ),
    );
  }

  void _levelSelected(String? level) {
    // Handle language selection
    if (level != null) {
      print('Selected Language: $levels');
    }
  }
Widget _buildRichTextEditor3() {
    
    return SingleChildScrollView(
      
      child:Column(
        children: [
        SizedBox(height:10),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Quick Bio', style: TextStyle(color:Colors.grey, fontSize:16),)),
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
              controller: _Controller3,
              
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
  
  List<Map<String, String>> projectEntries = [];

  void _addProject(BuildContext context) {
    // Dummy data for demonstration; replace with actual data entry logic
    setState(() {
      projectEntries.add({
        'richTextContent3': richTextContent3,
        'insert_title' : insert_title,
        'insert_link' : insert_link,
      });
    });
  }
  void _removeProject(int index) {
    setState(() {
      if (index >= 0 && index < projectEntries.length) {
        projectEntries.removeAt(index); // Remove the entry at the specified index
      }
    });
  }
 Widget _buildProjectContainer({
  required String richTextContent3,
  required String insert_title,
  required String insert_link,
  required VoidCallback onDelete, // Added onDelete parameter
}) {
  return Container(
    
                              child: Column(
                                children: [
                                  Row(children: [
                                    SizedBox(width:30),
                                    Text('Project & Portfolio',style: TextStyle(
                                  
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ), ),
                        SizedBox(width:100),
                        IconButton(onPressed: onDelete, 
                        icon: Icon(Icons.delete, color:Colors.red, size:18))],),
                        Divider(color:Colors.grey, indent: 20, endIndent:20, height: 0),
                        SizedBox(height:15),
                            _buildRichTextEditor3(),
                            SizedBox(height:10),
                             buildTextField(
                              label: 'Title',
                              hintText: '',
                              onChanged: (value) => insert_title = value,
                            ),
                            
                           buildTextField(
                              label: 'Link',
                              hintText: '',
                              onChanged: (value) => insert_link = value,
                            ),],
                              ));
}
 
}
  


