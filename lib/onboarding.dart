import 'package:flutter/material.dart';

import 'package:flutter_quill/flutter_quill.dart' as quill;

class Onboardingpage extends StatefulWidget {
  const Onboardingpage({super.key});

  @override
  _OnboardingpageState createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  bool isCurrentlyWorking = false;
  int currentStep = 0;
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _institutionController = TextEditingController();
  String? _selectedinstitution;
  final TextEditingController _degreeController = TextEditingController();
  String? _selecteddegree;
  final TextEditingController _fieldController = TextEditingController();
  String? _selectedfield;

  final List<String> steps = [
    "Add Education",
    "Add Experience",
    "skills",
    "Finish"
  ];
  List<String> allSkills = [
    'Flutter',
    'Dart',
    'Firebase',
    'Python',
    'JavaScript',
    'UI/UX',
    'Spring',
    'Django',
  ];
  List<String> allLanguages = [
    'Amharic',
    'English',
    'French',
    'Spanish',
    'Deutsch',
    'Arabic',
    'Portugese',
  ];

  List<String> selectedSkills = [];

  void _openSkillPicker() async {
    List<String> tempSelected = List.from(selectedSkills);

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Select Skills"),
        content: Container(
          width: MediaQuery.of(context).size.width, // 80% of screen width
      height: MediaQuery.of(context).size.height * 0.8,
        child:SingleChildScrollView(
          child: Column(
            children: allSkills.map((skill) {
              return CheckboxListTile(
                title: Text(skill),
                value: tempSelected.contains(skill),
                onChanged: (bool? value) {
                  setState(() {
                    if (value == true) {
                      tempSelected.add(skill);
                    } else {
                      tempSelected.remove(skill);
                    }
                  });
                },
              );
            }).toList(),
          ),
        ),
      ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // cancel
            },
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectedSkills = tempSelected;
              });
              Navigator.of(context).pop();
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  void _removeSkill(String skill) {
    setState(() {
      selectedSkills.remove(skill);
    });
  }
  List<String> selectedLanguages = [];
  void _openLanguagePicker() async {
    List<String> tempSelected = List.from(selectedSkills);

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Select Languages"),
        content: SingleChildScrollView(
          child: Column(
            children: allLanguages.map((language) {
              return CheckboxListTile(
                title: Text(language),
                value: tempSelected.contains(language),
                onChanged: (bool? value) {
                  setState(() {
                    if (value == true) {
                      tempSelected.add(language);
                    } else {
                      tempSelected.remove(language);
                    }
                  });
                },
              );
            }).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // cancel
            },
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectedLanguages = tempSelected;
              });
              Navigator.of(context).pop();
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  void _removeLanguage(String language) {
    setState(() {
      selectedLanguages.remove(language);
    });
  }

  void _showInstitutionPicker(){
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
                  groupValue: _selectedinstitution,
                  onChanged: (value) {
                    setState(() {
                      _selectedinstitution = value;
                      _institutionController.text = '';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                RadioListTile<String?>(
                  title: Text("AddisAbaba Uni", style: TextStyle(color: Colors.black)),
                  value: "AddisAbaba Uni",
                  groupValue: _selectedinstitution,
                  onChanged: (value) {
                    setState(() {
                      _selectedinstitution = value;
                      _institutionController.text = 'AddisAbaba Uni';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                RadioListTile<String?>(
                  title: Text("Haramaya Uni", style: TextStyle(color: Colors.black)),
                  value: "Haramaya Uni",
                  groupValue: _selectedinstitution,
                  onChanged: (value) {
                    setState(() {
                      _selectedinstitution = value;
                      _institutionController.text = 'Haramaya Uni';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                
                RadioListTile<String?>(
                  title: Text("Bahirdar Uni", style: TextStyle(color: Colors.black)),
                  value: "Bahirdar Uni",
                  groupValue: _selectedinstitution,
                  onChanged: (value) {
                    setState(() {
                      _selectedinstitution = value;
                      _institutionController.text = 'Bahirdar Uni';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),RadioListTile<String?>(
                  title: Text("Hawassa Uni", style: TextStyle(color: Colors.black)),
                  value: "Hawassa Uni",
                  groupValue: _selectedinstitution,
                  onChanged: (value) {
                    setState(() {
                      _selectedinstitution = value;
                      _institutionController.text = 'Hawassa Uni';
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
void _showDegreePicker(){
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
                  groupValue: _selecteddegree,
                  onChanged: (value) {
                    setState(() {
                      _selecteddegree = value;
                      _degreeController.text = '';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                RadioListTile<String?>(
                  title: Text("Diploma", style: TextStyle(color: Colors.black)),
                  value: "Diploma",
                  groupValue: _selecteddegree,
                  onChanged: (value) {
                    setState(() {
                      _selecteddegree = value;
                      _degreeController.text = 'Diploma';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                RadioListTile<String?>(
                  title: Text("Bachelor's", style: TextStyle(color: Colors.black)),
                  value: "Bachelor's",
                  groupValue: _selecteddegree,
                  onChanged: (value) {
                    setState(() {
                      _selecteddegree = value;
                      _degreeController.text = "Bachelor's";
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                
                RadioListTile<String?>(
                  title: Text("Associate Degree", style: TextStyle(color: Colors.black)),
                  value: "Associate Degree",
                  groupValue: _selecteddegree,
                  onChanged: (value) {
                    setState(() {
                      _selecteddegree = value;
                      _degreeController.text = 'Associate Degree';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),RadioListTile<String?>(
                  title: Text("Master’s Degree", style: TextStyle(color: Colors.black)),
                  value: "Master’s Degree",
                  groupValue: _selecteddegree,
                  onChanged: (value) {
                    setState(() {
                      _selecteddegree = value;
                      _degreeController.text = 'Master’s Degree';
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
void _showFieldPicker(){
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
                  groupValue: _selectedfield,
                  onChanged: (value) {
                    setState(() {
                      _selectedfield = value;
                      _fieldController.text = '';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                RadioListTile<String?>(
                  title: Text("Accounting", style: TextStyle(color: Colors.black)),
                  value: "Accounting",
                  groupValue: _selectedfield,
                  onChanged: (value) {
                    setState(() {
                      _selectedfield = value;
                      _fieldController.text = 'Accounting';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                RadioListTile<String?>(
                  title: Text("Computer Science", style: TextStyle(color: Colors.black)),
                  value: "Computer Science",
                  groupValue: _selectedfield,
                  onChanged: (value) {
                    setState(() {
                      _selectedfield = value;
                      _fieldController.text = "Computer Science";
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),
                
                RadioListTile<String?>(
                  title: Text("Management", style: TextStyle(color: Colors.black)),
                  value: "Management",
                  groupValue: _selectedfield,
                  onChanged: (value) {
                    setState(() {
                      _selectedfield = value;
                      _fieldController.text = 'Management';
                    });
                    Navigator.pop(context);
                  },
                  activeColor: Colors.blue,
                ),RadioListTile<String?>(
                  title: Text("Law", style: TextStyle(color: Colors.black)),
                  value: "Law",
                  groupValue: _selectedfield,
                  onChanged: (value) {
                    setState(() {
                      _selectedfield = value;
                      _fieldController.text = 'Law';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      
      body: SingleChildScrollView(
        child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Complete Profile',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 20),

            // Step progress indicator with connecting lines
            Row(
              children: List.generate(steps.length * 2 - 1, (index) {
                if (index.isEven) {
                  int stepIndex = index ~/ 2;
                  bool isCompleted = stepIndex < currentStep;
                  bool isCurrent = stepIndex == currentStep;

                  return CircleAvatar(
                    radius: 12,
                    backgroundColor: isCompleted || isCurrent
                        ? Colors.teal
                        : Colors.grey,
                    child: isCompleted
                        ? const Icon(Icons.check, color: Colors.white, size: 16)
                        : Text(
                            '${stepIndex + 1}',
                            style: const TextStyle(color: Colors.white),
                          ),
                  );
                } else {
                  return Expanded(
                    child: Container(
                      height: 2,
                      color: (index ~/ 2) < currentStep
                          ? Colors.teal
                          : Colors.grey,
                    ),
                  );
                }
              }),
            ),
            const SizedBox(height: 60),

            SingleChildScrollView(
            child: Container(
             
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(steps[currentStep],
                      style: const TextStyle(fontSize: 24)),
                  const SizedBox(height: 20),

                  // Conditional input fields based on the current step
                  if (currentStep == 0) ...[
                   
                             Column(children: [
                     Row(children: [
                              Text('Institution ', style: TextStyle(color: Colors.black54,fontSize: 16),),
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
                controller: _institutionController,
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
        borderSide: BorderSide(color: Colors.blue, width: 1), 
      ),
      suffixIcon: Icon(Icons.arrow_drop_down), // optional calendar icon
    ),
                onTap: _showInstitutionPicker,
              ),
), 
SizedBox(height:20),
Row(children: [
                              Text('Degree ', style: TextStyle(color: Colors.black54,fontSize: 16),),
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
                controller: _degreeController,
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
        borderSide: BorderSide(color: Colors.blue, width: 1), 
      ),
      suffixIcon: Icon(Icons.arrow_drop_down), // optional calendar icon
    ),
                onTap: _showDegreePicker,
              ),
), 
SizedBox(height:20),
Row(children: [
                              Text('Field of Study ', style: TextStyle(color: Colors.black54,fontSize: 16),),
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
                controller: _fieldController,
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
        borderSide: BorderSide(color: Colors.blue, width: 1), 
      ),
      suffixIcon: Icon(Icons.arrow_drop_down), // optional calendar icon
    ),
                onTap: _showFieldPicker,
              ),
),
SizedBox(height:20),
Row(children: [
                              Text('Graduation Year ', style: TextStyle(color: Colors.black54,fontSize: 16),),
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
      hintText: 'Select Year',
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
        borderSide: BorderSide(color: Colors.blue, width: 1), 
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
)
                  ],),
                  ] 
                  
                  else if (currentStep == 1) ...[
                    
                 SizedBox(height:5),
                 Column(
                        children: [
                          Row(children: [
                             Text('Company name ', style: TextStyle(color: Colors.black54,fontSize: 16),),
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
      borderSide: BorderSide(color: Colors.blue, width: 1), // 👈 And this one
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
            SizedBox(height:20),
             Row(children: [
                             Text('Title ', style: TextStyle(color: Colors.black54,fontSize: 16),),
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
      borderSide: BorderSide(color: Colors.blue, width: 1), // 👈 And this one
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
            SizedBox(height:20),
            Row(children: [
                              Text('From ', style: TextStyle(color: Colors.black54,fontSize: 16),),
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
        borderSide: BorderSide(color: Colors.blue, width: 1), 
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
SizedBox(height:20),
Row(children: [
                              Text('To ', style: TextStyle(color: Colors.black54,fontSize: 16),),
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
        borderSide: BorderSide(color: Colors.blue, width: 1), 
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
SizedBox(height:10),

  
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        decoration: BoxDecoration(
          //border: Border.all(color: Colors.grey, width: 1), // Border around the switch
          //borderRadius: BorderRadius.circular(40), // Rounded corners for the switch border
        ),
        child: Transform.scale(
          scale: 0.9, // Ad
        child: Switch(
          value: isCurrentlyWorking,
          onChanged: (bool value) {
            setState(() {
              isCurrentlyWorking = value; // Update the state
            });
          },
          activeColor: Colors.green, // Color when the switch is on
          inactiveThumbColor: Colors.grey, // Color when the switch is off
        ),
      ),
      ),
      const SizedBox(width: 8), // Space between switch and title
      const Text("I currently work here", style: TextStyle(color:Colors.grey, fontSize: 16),),
    ],
  ),

]),
                  ]      
                   
                   else if (currentStep == 2) ...[
                   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            SizedBox(width:130),
            TextButton(
            onPressed: _openSkillPicker,
            child: const Text("Add More +", style: TextStyle(color:Colors.blue)),
          ),
          ],),
          
          const Text(
            'Add your Skills',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 8),

          // Chip display instead of TextField
          Container(
            
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Wrap(
              spacing: 8,
              runSpacing: 4,
              children: selectedSkills.map((skill) {
                return Chip(
                  label: Text(skill),
                  deleteIcon: const Icon(Icons.close),
                  onDeleted: () => _removeSkill(skill),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 10),
          
         Row(children: [
            SizedBox(width:130),
            TextButton(
            onPressed: _openLanguagePicker,
            child: const Text("Add More +", style: TextStyle(color:Colors.blue)),
          ),
          ],),
          
          const Text(
            'Add your Language Skills',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 8),

          // Chip display instead of TextField
          Container(
            
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Wrap(
              spacing: 8,
              runSpacing: 4,
              children: selectedLanguages.map((language) {
                return Chip(
                  label: Text(language),
                  deleteIcon: const Icon(Icons.close),
                  onDeleted: () => _removeLanguage(language),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 10),
          
        ],
      ),


                  ] else if (currentStep == 3) ...[
                    const Text(''),
                  ],
                ],
              ),
            ),
        ),
              SizedBox(height:10),
            // Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentStep > 0)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentStep--;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                                 backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 elevation: 4,
                               ),
                    child: const Text('Back',style: TextStyle(fontSize: 16, color:Colors.white,fontWeight: FontWeight.bold), ),
                  ),
                   
                ElevatedButton(
                  onPressed: () {
                    if (currentStep < steps.length - 1) {
                      setState(() {
                        currentStep++;
                      });
                    } else {
                      // Finish action
                      print('Onboarding complete!');
                    }
                  },
                   style: ElevatedButton.styleFrom(
                                 backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 elevation: 4,
                               ),
                 
                  child:
                      Text(currentStep < steps.length - 1 ? 'Save and Continue' : 'Finish',style: TextStyle(fontSize: 16, color:Colors.white,fontWeight: FontWeight.bold), ),
                ),
              ],
            ),
          ],
        ),
      ),
      )
    );
  }
}
