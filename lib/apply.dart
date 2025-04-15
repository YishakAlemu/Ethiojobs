import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Applypage extends StatefulWidget {
  const Applypage({super.key});

  @override
  _ApplypageState createState() => _ApplypageState();
}

class _ApplypageState extends State<Applypage>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child:Container(
        
        //padding: const EdgeInsets.all(16.0),
      child:Column(children: [
          SizedBox(height:90),
      
                Container(
                  height:40,
                  width:40,
                 decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                      
                    ),
                 
                child:Icon(
                                  Icons.file_copy,
                                  size: 20,
                                  color: Colors.white, // Lightning icon color
                                ),
                ),
                SizedBox(height:10),
                Text('Upload Resume to apply', style:TextStyle(fontSize:20, fontWeight:FontWeight.bold, color:Colors.black)),
                SizedBox(height:8),
                Text('Accepted File Types are PDF, TXT,DOC,DOCX', style:TextStyle(fontSize:15, color:Colors.black54)),
                SizedBox(height:10),
                Container(
                  height:38,
                  width:300,
                  child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/apply2');
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0), // Rounded corners
                                ),
                                backgroundColor: const Color.fromARGB(255, 72, 193, 156), // Background color
                              ),
                              child: Text(
                                'Apply',
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
                                
                              
                              ),
                  
                  
                  ),
                ),
                SizedBox(height:50),
                Row(
  mainAxisAlignment: MainAxisAlignment.center, // Center the content
  children: [
    Expanded(
      child: Divider(color: Colors.grey, indent: 20, endIndent: 5), // Divider on the left
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0), // Add padding around the text
      child: Text(
        'Or',
        style: TextStyle(color: Colors.grey, fontSize: 14),
      ),
    ),
    Expanded(
      child: Divider(color: Colors.grey, indent: 5, endIndent: 20), // Divider on the right
    ),
  ],
),
             SizedBox(height:50),
             Text('Build an EthioJobs Resume To Apply', style:TextStyle(fontSize:20, fontWeight:FontWeight.bold, color:Colors.black)),
             SizedBox(height:10),
             Container(
              width:300,
              child: Text("Recommended", style:TextStyle(fontSize:14, color:Colors.black54))),
             SizedBox(height:5),
             Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  
                  color: Colors.black,
                )
              ),
              height: 38,
              width:320,
               child: ElevatedButton(onPressed: (){}, 
               style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0), // Rounded corners
                                ),
                                backgroundColor: const Color.fromARGB(255, 255, 255, 255), // Background color
                              ),
               child:Text('Apply with Ethiojobs',style:TextStyle(color:Colors.black, fontSize:14))),
             )
                 
        ])
        )
      )
    );
  }

}