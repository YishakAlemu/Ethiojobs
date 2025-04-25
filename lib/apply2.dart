import 'package:flutter/material.dart';

class Apply2page extends StatefulWidget {
  const Apply2page({super.key});

  @override
  _Apply2pageState createState() => _Apply2pageState();
}

class _Apply2pageState extends State<Apply2page>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
        
        
      child:Column(children: [
        SizedBox(height:30),
        Center(child:Text(textAlign: TextAlign.center,'Apply for the position Junior\nAccountant', style: TextStyle(fontSize:17, fontWeight:FontWeight.w700),),),
        SizedBox(height:10),
       Divider(color:const Color.fromARGB(255, 230, 230, 230)),
        SizedBox(height:30),
         Text('Upload Resume', style:TextStyle(fontSize:18, fontWeight:FontWeight.w700)),
         SizedBox(height:5),
         Text('Please Upload yout CV to apply', style:TextStyle(fontSize:16, fontWeight:FontWeight.w400)),
         SizedBox(height:20),
         Divider(color:const Color.fromARGB(255, 230, 230, 230)),
         SizedBox(height:30),
         Text('Accepted File Types are PDF, TXT,DOC,DOCX', style:TextStyle(fontSize:15, color:Colors.black54)),
         SizedBox(height:10),
         Container(
          height:35,
          width:200,
          color:const Color.fromARGB(255, 244, 244, 244),
           child:Center(child:Row(children: [
            SizedBox(width:15),
            Icon(Icons.file_copy, size: 20,
                                    color: Colors.grey, ),
                                    SizedBox(width:5),
                                    Text('Upload CV', style: TextStyle(color:Colors.grey, fontSize:17),)
           ],),),
         ),
         SizedBox(height:10),
         Container(
          height: 40,
          width:320,
          decoration: BoxDecoration(
            color:Colors.grey,
            borderRadius: BorderRadius.circular(3),
          ),
           child: ElevatedButton(onPressed: (){}, 
           style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3), // Rounded corners
                                  ),
                                  backgroundColor: const Color.fromARGB(255, 72, 193, 156), // Background color
                                ),
           child: Row(children: [
            SizedBox(width:75),
            Icon(Icons.cloud_download, size:20, color:Colors.white),
            SizedBox(width:5),
            Center(
            child:Text("UPLOAD FILE", style:TextStyle(color: Colors.white, fontSize:17, fontWeight:FontWeight.bold))),
           ],)),
         ),
         SizedBox(height:35),
         SingleChildScrollView(child:Container(

          child: Column(children: [
            Center(child:Text('Selecting existing resume', style: TextStyle(color:Colors.black, fontSize:17,fontWeight:FontWeight.w600),)),
            Center(child:Text('Please choose CV to apply', style: TextStyle(color:Colors.black, fontSize:16, fontWeight:FontWeight.w400))),
                 SizedBox(height:10),
                 Divider(color:const Color.fromARGB(255, 230, 230, 230)),
                 SizedBox(height:5),
                 Row(children: [
                  SizedBox(width:15),
                  Icon(Icons.file_copy, color: Colors.grey,size: 17,),
                  SizedBox(width:20),
                  Text("resume_1.pdf", style: TextStyle(color: Colors.black, fontSize:15, )),
                  SizedBox(width:50),
                  Container(
                     height:25,
                     width:85,
                     color: const Color.fromARGB(255, 214, 212, 212),
                    child: ElevatedButton(onPressed: (){}, 
                     style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3), // Rounded corners
                                  ),
                                  backgroundColor: const Color.fromARGB(255, 214, 212, 212), // Background color
                                ),
                    child: Text("SELECT", style: TextStyle(fontSize:13, color:Colors.grey,fontWeight:FontWeight.w600),)),
                  ),
                  SizedBox(width:0),
                    IconButton(icon: Icon(Icons.download, 
                  color: const Color.fromARGB(255, 26, 121, 198), 
                  size: 21),
                  onPressed: () { }),
                   SizedBox(width:0),
                    IconButton(icon: Icon(Icons.delete, 
                  color: const Color.fromARGB(255, 26, 121, 198), 
                  size: 19),
                  onPressed: () { }),

                 ],),
                 SizedBox(height:10),
                 Divider(color:const Color.fromARGB(255, 230, 230, 230)),
                 SizedBox(height:5),
                 Row(children: [
                  SizedBox(width:15),
                  Icon(Icons.file_copy, color: Colors.grey,size: 17,),
                  SizedBox(width:20),
                  Text("resume_1.pdf", style: TextStyle(color: Colors.black, fontSize:15, )),
                  SizedBox(width:50),
                  Container(
                     height:25,
                     width:85,
                     color: const Color.fromARGB(255, 214, 212, 212),
                    child: ElevatedButton(onPressed: (){}, 
                     style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3), // Rounded corners
                                  ),
                                  backgroundColor: const Color.fromARGB(255, 214, 212, 212), // Background color
                                ),
                    child: Text("SELECT", style: TextStyle(fontSize:13, color:Colors.grey,fontWeight:FontWeight.w600),)),
                  ),
                  SizedBox(width:0),
                    IconButton(icon: Icon(Icons.download, 
                  color: const Color.fromARGB(255, 26, 121, 198), 
                  size: 21),
                  onPressed: () { }),
                   SizedBox(width:0),
                    IconButton(icon: Icon(Icons.delete, 
                  color: const Color.fromARGB(255, 26, 121, 198), 
                  size: 19),
                  onPressed: () { }),

                 ],),
                 SizedBox(height:10),
                 Divider(color:const Color.fromARGB(255, 230, 230, 230)),
                 SizedBox(height:5),
                 Row(children: [
                  SizedBox(width:15),
                  Icon(Icons.file_copy, color: Colors.grey,size: 17,),
                  SizedBox(width:20),
                  Text("resume_1.pdf", style: TextStyle(color: Colors.black, fontSize:15, )),
                  SizedBox(width:50),
                  Container(
                     height:25,
                     width:85,
                     color: const Color.fromARGB(255, 214, 212, 212),
                    child: ElevatedButton(onPressed: (){}, 
                     style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3), // Rounded corners
                                  ),
                                  backgroundColor: const Color.fromARGB(255, 214, 212, 212), // Background color
                                ),
                    child: Text("SELECT", style: TextStyle(fontSize:13, color:Colors.grey,fontWeight:FontWeight.w600),)),
                  ),
                  SizedBox(width:0),
                    IconButton(icon: Icon(Icons.download, 
                  color: const Color.fromARGB(255, 26, 121, 198), 
                  size: 21),
                  onPressed: () { }),
                   SizedBox(width:0),
                    IconButton(icon: Icon(Icons.delete, 
                  color: const Color.fromARGB(255, 26, 121, 198), 
                  size: 19),
                  onPressed: () { }),

                 ],),
                 SizedBox(height:10),
                 Divider(color:const Color.fromARGB(255, 230, 230, 230)),
                 SizedBox(height:5),
                 Row(children: [
                  SizedBox(width:15),
                  Icon(Icons.file_copy, color: Colors.grey,size: 17,),
                  SizedBox(width:20),
                  Text("resume_1.pdf", style: TextStyle(color: Colors.black, fontSize:15, )),
                  SizedBox(width:50),
                  Container(
                     height:25,
                     width:85,
                     color: const Color.fromARGB(255, 214, 212, 212),
                    child: ElevatedButton(onPressed: (){}, 
                     style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3), // Rounded corners
                                  ),
                                  backgroundColor: const Color.fromARGB(255, 214, 212, 212), // Background color
                                ),
                    child: Text("SELECT", style: TextStyle(fontSize:13, color:Colors.grey,fontWeight:FontWeight.w600),)),
                  ),
                  SizedBox(width:0),
                    IconButton(icon: Icon(Icons.download, 
                  color: const Color.fromARGB(255, 26, 121, 198), 
                  size: 21),
                  onPressed: () { }),
                   SizedBox(width:0),
                    IconButton(icon: Icon(Icons.delete, 
                  color: const Color.fromARGB(255, 26, 121, 198), 
                  size: 19),
                  onPressed: () { }),

                 ],),
                 SizedBox(height:10),
                 Divider(color:const Color.fromARGB(255, 230, 230, 230)),
                 SizedBox(height:5),
                 Row(children: [
                  SizedBox(width:15),
                  Icon(Icons.file_copy, color: Colors.grey,size: 17,),
                  SizedBox(width:20),
                  Text("resume_1.pdf", style: TextStyle(color: Colors.black, fontSize:15, )),
                  SizedBox(width:50),
                  Container(
                     height:25,
                     width:85,
                     color: const Color.fromARGB(255, 214, 212, 212),
                    child: ElevatedButton(onPressed: (){}, 
                     style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3), // Rounded corners
                                  ),
                                  backgroundColor: const Color.fromARGB(255, 214, 212, 212), // Background color
                                ),
                    child: Text("SELECT", style: TextStyle(fontSize:13, color:Colors.grey,fontWeight:FontWeight.w600),)),
                  ),
                  SizedBox(width:0),
                    IconButton(icon: Icon(Icons.download, 
                  color: const Color.fromARGB(255, 26, 121, 198), 
                  size: 21),
                  onPressed: () { }),
                   SizedBox(width:0),
                    IconButton(icon: Icon(Icons.delete, 
                  color: const Color.fromARGB(255, 26, 121, 198), 
                  size: 19),
                  onPressed: () { }),

                 ],)
          ],)
         )
          )
      ])
          )
      )
    ),
     bottomNavigationBar: BottomAppBar(
        elevation: 8,
        color: Colors.white,
        child: Container(
         child:Row(children:[
          SizedBox(width:10),
          SizedBox(
            height:35,
            width:160,
            child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3), // Rounded corners
                                  ),
                                  backgroundColor: const Color.fromARGB(255, 170, 167, 167), 
            ),
            child: Text('SUBMIT', style:TextStyle(fontSize:15, color:Colors.white))),
          ),
          SizedBox(width:10),
          SizedBox(
            height:35,
            width:160,
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3), // Rounded corners
                                  ),
                                  backgroundColor: const Color.fromARGB(255, 26, 121, 198),  
            ),
             child: Text('CANCEL', style: TextStyle(fontSize: 15, color:Colors.white),)),
          )
    
         ]
         )
        ),
     ),
    );
  }
}
