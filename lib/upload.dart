
import 'package:flutter/material.dart';
class Uploadpage extends StatefulWidget {
  const Uploadpage({super.key});


  @override
  _UploadpageState createState() => _UploadpageState();
}

class _UploadpageState extends State<Uploadpage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          SizedBox(height:40),
              SizedBox(
                height:40,
                child: Row(children: [
                  
                  Text('', style: TextStyle(fontSize:17, ),),
                  Text('', style: TextStyle(color:Colors.red,fontSize:17))
                ],),
              ),
              SizedBox(height:1),
              Container(
                margin: EdgeInsets.only(top:0),
                height:200,
                width:360,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                    BoxShadow(
                     color: Colors.black.withOpacity(0.1), // Shadow color
                      spreadRadius: 0, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset: Offset(0, 2), // Offset for the shadow
                       ),
                      ],
                      ),
              child:Column(children: [
                SizedBox(height:60),
              IconButton(icon: Icon(Icons.cloud_download_rounded, 
                  color:const Color.fromARGB(255, 26, 121, 198),
                   size: 40),
                   onPressed: () { }),
                   Text('Upload File', style:TextStyle(fontSize: 17, color:const Color.fromARGB(255, 26, 121, 198), ))
        ],
              )
              ),
        SizedBox(height:60),
        SizedBox(
                height:40,
                child: Row(children: [
                  
                  Text('', style: TextStyle(fontSize:17, ),),
                  Text('', style: TextStyle(color:Colors.red,fontSize:17))
                ],),
              ),
        Container(
                margin: EdgeInsets.only(top:0),
                height:200,
                width:360,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                    BoxShadow(
                     color: Colors.black.withOpacity(0.1), // Shadow color
                      spreadRadius: 0, // Spread radius
                      blurRadius: 10, // Blur radius
                      offset: Offset(0, 2), // Offset for the shadow
                       ),
                      ],
                      ),
              child:Column(children: [
                SizedBox(height:70),
              ElevatedButton(
                               onPressed: () {
                                 Navigator.pushNamed(context, '/onboarding');
                               },
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 elevation: 4,
                               ),
                               child: const Text(
                                 'Build Your Profile',
                                 style: TextStyle(fontSize: 17, color:Colors.white,fontWeight: FontWeight.bold),
                               ),
                             ),
        ],
              )
              ),
        
        ],)
        )
        )
        );
        
}
}