import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' ;


class Resume_builderpage extends StatefulWidget {
  const Resume_builderpage({super.key});

  @override
  Resume_builderpageState createState() => Resume_builderpageState();
}

class Resume_builderpageState extends State<Resume_builderpage> {
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

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            

          ],
        )
      )
    );
  }

}