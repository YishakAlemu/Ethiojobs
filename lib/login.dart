import 'package:flutter/material.dart';
import 'signup.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});
  

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool isChecked = false; // Define isChecked variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:Column(
        children: [
          Center( // Center the entire container
  child: Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    height: 625,
    width: 360, 
    margin: EdgeInsets.only(top: 60),
    // decoration: BoxDecoration(
    //   color: Colors.white, 
    //   borderRadius: BorderRadius.circular(15.0),
    //   boxShadow: [
    //     BoxShadow(
    //       color: Colors.black.withOpacity(0), // Light shadow at the top
    //       offset: Offset(0, 0.1), // Slightly below the container
    //       blurRadius: 0, // Light blur for the top shadow
    //     ),
    //     BoxShadow(
    //       color: Colors.black.withOpacity(0.1), // Medium shadow in the middle
    //       offset: Offset(0, 0.5), // Further down
    //       blurRadius: 2.0, // More blur
    //     ),
    //     BoxShadow(
    //       color: Colors.black.withOpacity(0.2), // Strong shadow at the bottom
    //       offset: Offset(0, 1), // Even lower
    //       blurRadius: 4.0, // Most blur
    //     ),
    //   ],
    // ),
    
      child: Column(
        
        children: [
          SizedBox(height: 30),
          Center(
            child: Text('Log in', style: TextStyle(color: Colors.black, fontSize: 24)),
          ),
          Center(
            child: Text(
              'Log in to continue as a job seeker in our\nwebsite',
              style: TextStyle(color: Colors.black, fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40),
          SizedBox(
            width: 300,
            child: TextField(
              cursorColor: Colors.black54,
              decoration: InputDecoration(
                 labelText: 'Email',
              labelStyle: TextStyle(color: Colors.blue, fontSize: 12),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Set border color to black
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 0.4), // Black lower border
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0), // Blue lower border when focused
                ),
                hintText: "Email",
                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                contentPadding: EdgeInsets.only(top: 20.0, left: 0.0, bottom: 0.0),
              ),
            ),
          ),
             SizedBox(height:25),

              SizedBox(
            width: 300,
            child: TextField(
              cursorColor: Colors.black54,
              decoration: InputDecoration(
                labelText: 'Password',
              labelStyle: TextStyle(color: Colors.blue, fontSize: 12),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Set border color to black
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 0.4), // Black lower border
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0), // Blue lower border when focused
                ),
                hintText: "Password",
                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                contentPadding: EdgeInsets.only(top: 20.0, left: 0.0, bottom: 0.0),
              ),
            ),
          ),
               SizedBox(height:15),
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
                    Text('Remember me', style: TextStyle(color:Colors.grey,fontSize: 18),),
                 ],
               ),
            
                    SizedBox(height:15),
                    ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/upload');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                    padding: EdgeInsets.zero, // Remove any padding from the button
                                    minimumSize: Size(300, 37),  // Ensure minimum size is zero to avoid extra space
                                  ),
                                  child: Text('LOG IN', style: TextStyle(color: Colors.white, fontSize: 16,)),
                                ),
                            
                           Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            height: 20,
                            width:300,
                             child: TextButton(
                                onPressed: () { },
                                style: TextButton.styleFrom(
                               padding: EdgeInsets.zero, // Remove any padding from the button
                              minimumSize: Size(0, 0),
                                          ),
                                  child: Text(
                                  'I Forgot My Password',
                                  style: TextStyle(
                                color: const Color.fromARGB(255, 26, 121, 198),
                                   fontSize: 14,
                                   ),
                                   ),
                                    ),
                           ),
                          SizedBox(height: 10),
                          
                             Row(children: [
                              SizedBox(width:20),
                 Text("Don't have an account?", 
                 style: TextStyle(fontSize: 18, color:Colors.grey),),
                  Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            height: 20,
                            
                             child: TextButton(
                               onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Signuppage()), // Navigate to SignupPage
        );
      },
                                style: TextButton.styleFrom(
                               padding: EdgeInsets.zero, // Remove any padding from the button
                              minimumSize: Size(0, 0),
                                          ),
                                  child: Text(
                                  '  Sign Up',
                                  style: TextStyle(
                                color: const Color.fromARGB(255, 26, 121, 198),
                                   fontSize: 15,
                                   ),
                                   ),
                                    ),
                           ),

                             ],),
                       SizedBox(height:25),
                       Row(
  mainAxisAlignment: MainAxisAlignment.center, // Center the content
  children: [
    Expanded(
      child: Divider(color: Colors.black38, indent: 20, endIndent: 5), // Divider on the left
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0), // Add padding around the text
      child: Text(
        'or',
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    ),
    Expanded(
      child: Divider(color: Colors.black38, indent: 5, endIndent: 20), // Divider on the right
    ),
  ],
),

       SizedBox(height:20),
         Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center, // Center the icons
    children: [
      IconButton(
        icon: Image.asset(
          'assets/google_logo.webp',
          width: 43, // Set width for the icon
          height: 43, // Set height for the icon
        ),
        onPressed: () {
          // Add your Google action here
        },
      ),
      SizedBox(width: 2), // Space between icons
      IconButton(
        icon: Image.asset(
          'assets/linkedin.webp',
          width: 30, // Set width for the icon
          height: 30, // Set height for the icon
        ),
        onPressed: () {
          // Add your LinkedIn action here
        },
      ),
    ],
  ),
),


        ],
      ),
    
  ),
),

        
        
         

        ]
        )
      )
    );
  }
}

// jobs //apps //profile //salert  //saved  