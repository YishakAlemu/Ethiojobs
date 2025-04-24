import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' ;


class Cv_editorpage extends StatefulWidget {
  const Cv_editorpage({super.key});

  @override
  _Cv_editorpageState createState() => _Cv_editorpageState();
}

class _Cv_editorpageState extends State<Cv_editorpage> {
  String fullName = '';
  String email = '';
  String phoneNumber = '';
  String birthday = '';
  String country = '';
  String city = '';
  String gender = '';
  String profession = '';
 String richTextContent = '';

  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  final QuillController _Controller = QuillController.basic();
  @override

  void dispose(){
    _Controller.dispose();
    super.dispose();
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
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close', style: TextStyle(color: Colors.grey)),
                          ),
                          ElevatedButton(
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
                            child: Text('Save', style: TextStyle(color: Colors.white)),
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
void showPopup2(BuildContext context) {
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
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close', style: TextStyle(color: Colors.grey)),
                          ),
                          ElevatedButton(
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
                            child: Text('Save', style: TextStyle(color: Colors.white)),
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
  

  Widget _buildTextField({required String label, required String hintText, required Function(String) onChanged}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.black54, fontSize: 16)),
        SizedBox(height: 8),
        TextField(
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
      label: 'Birthday',
      hintText: 'Select date',
      onChanged: (value) {
        birthday = value;
      },
    );
  }

  Widget _buildGenderPickerField() {
    return _buildTextField(
      label: 'Gender',
      hintText: 'Select Gender',
      onChanged: (value) {
        gender = value;
      },
    );
  }

  Widget _buildProfessionPickerField() {
    return _buildTextField(
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
          Container(
            
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => showPopup(context),
            
          ),
        ],
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Full Name: $fullName'),
            Text('Email: $email'),
            Text('Phone: $phoneNumber'),
            Text('Birthday: $birthday'),
            Text('Country: $country'),
            Text('City: $city'),
            Text('Gender: $gender'),
            Text('Profession: $profession'),
             SizedBox(height: 20),
            Text('Rich Text Content: $richTextContent'),
          ],
        ),
      ),
    );
  }
}