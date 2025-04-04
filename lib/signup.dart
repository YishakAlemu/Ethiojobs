import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});
  

  @override
  _SignuppageState createState() => _SignuppageState(
    
  );
  
}

class _SignuppageState extends State<Signuppage> {
 bool isChecked = false; // Define isChecked variable
 bool isPasswordVisible = false; // Define isPasswordVisible variable

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
    height: 770,
    width: 360, 
    margin: EdgeInsets.only(top: 60),
    decoration: BoxDecoration(
      color: Colors.white, 
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0), // Light shadow at the top
          offset: Offset(0, 0.1), // Slightly below the container
          blurRadius: 0, // Light blur for the top shadow
        ),
        BoxShadow(
          color: Colors.black.withOpacity(0.1), // Medium shadow in the middle
          offset: Offset(0, 0.5), // Further down
          blurRadius: 2.0, // More blur
        ),
        BoxShadow(
          color: Colors.black.withOpacity(0.2), // Strong shadow at the bottom
          offset: Offset(0, 1), // Even lower
          blurRadius: 4.0, // Most blur
        ),
      ],
    ),
    
      child: Column(
        
        children: [
          SizedBox(height: 30),
          Center(
            child: Text('Sign Up', style: TextStyle(color: Colors.black, fontSize: 24)),
          ),
          Center(
            child: Text(
              'Please enter your details',
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
                 labelText: 'Full Name',
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
                hintText: "Full Name",
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
              
              SizedBox(height:20),

              SizedBox(
            width: 300,
            child: TextField(
              cursorColor: Colors.black54,
              decoration: InputDecoration(
                 
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Set border color to black
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 0.4), // Black lower border
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0), // Blue lower border when focused
                ),
                hintText: "+251",
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
    obscureText: !isPasswordVisible, // Show password when true
    decoration: InputDecoration(
      labelText: 'Password',
      labelStyle: TextStyle(color: Colors.blue, fontSize: 12),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 0.4),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.blue, width: 2.0),
      ),
      hintText: "Password",
      hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      contentPadding: EdgeInsets.only(top: 20.0, left: 0.0, bottom: 0.0),
      suffixIcon: IconButton(
        icon: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: Colors.black54,
        ),
        onPressed: () {
          setState(() {
            isPasswordVisible = !isPasswordVisible; // Toggle visibility
          });
        },
      ),
    ),
  ),
),

                 SizedBox(height:25),

             SizedBox(
  width: 300,
  child: TextField(
    cursorColor: Colors.black54,
    obscureText: !isPasswordVisible, // Show password when true
    decoration: InputDecoration(
      labelText: 'Confirm Password',
      labelStyle: TextStyle(color: Colors.blue, fontSize: 12),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 0.4),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.blue, width: 2.0),
      ),
      hintText: "Confirm Password",
      hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
      contentPadding: EdgeInsets.only(top: 20.0, left: 0.0, bottom: 0.0),
      suffixIcon: IconButton(
        icon: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          color: Colors.black54,
        ),
        onPressed: () {
          setState(() {
            isPasswordVisible = !isPasswordVisible; // Toggle visibility
          });
        },
      ),
    ),
  ),
),          
                          
                          SizedBox(height:25),
                    ElevatedButton(
                                  onPressed: () {
                                    // Action for Button 2
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                    padding: EdgeInsets.zero, // Remove any padding from the button
                                    minimumSize: Size(300, 37),  // Ensure minimum size is zero to avoid extra space
                                  ),
                                  child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 16,)),
                                ),
                            
                    
                  Row(children: [
                              SizedBox(width:20),
                 Text("Already have a Job Seeker Account?", 
                 style: TextStyle(fontSize: 14, color:Colors.grey),),
                  Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            height: 20,
                            
                             child: TextButton(
                               onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Loginpage()), // Navigate to SignupPage
        );
      },
                                style: TextButton.styleFrom(
                               padding: EdgeInsets.zero, // Remove any padding from the button
                              minimumSize: Size(0, 0),
                                          ),
                                  child: Text(
                                  ' LOG IN',
                                  style: TextStyle(
                                color: const Color.fromARGB(255, 26, 121, 198),
                                   fontSize: 13,
                                   ),
                                   ),
                                    ),
                           ),

                             ],),
       
                   

                  SizedBox(height: 25),
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

SizedBox(height:40),
Container(
                    height: 605,
                    width: 400,
                    color: Color.fromARGB(255, 72, 193, 156), // Background color for the footer
                    margin: EdgeInsets.only(top: 25),
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          SizedBox(height: 37),
                          SizedBox(
                            height: 57,
                            width: 290,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0), // Optional: for rounded corners
                              child: Image.asset(
                                'assets/africa_jobs.webp',
                                fit: BoxFit.fill, // Use BoxFit.fill or BoxFit.cover
                                height: 57, // Match container height
                                width: 300,  // Match container width
                              ),
                            ),
                          ),
                          SizedBox(height: 60),
                          Center(
                            child: Text(
                              'Subscribe to get updates from',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Text(
                            'Ethiojobs',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(height: 5),
                          Center(
                            child: Container(
                              height: 50,
                              width: 330,
                              margin: EdgeInsets.only(top: 0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: TextField(
                                  cursorColor: Colors.black54,
                                  decoration: InputDecoration(
                                    
                                    hintText: "Your email",
                                    hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 210),
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0, right: 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Action for Button 2
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 26, 121, 198),
                                    padding: EdgeInsets.zero, // Remove any padding from the button
                                    minimumSize: Size(150, 37),  // Ensure minimum size is zero to avoid extra space
                                  ),
                                  child: Text('Subscribe', style: TextStyle(color: Colors.white, fontSize: 16,)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text('Contact Us', style: TextStyle(
                            color: Colors.white, fontSize: 21, fontWeight: FontWeight.w600
                          )),
                          SizedBox(height: 10),
                          Text('Meskel Flower Road', style: TextStyle(
                            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400
                          )),
                          Text('Behind Nazra Hotel, Addis Ababa, Ethiopia', style: TextStyle(
                            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400
                          )),
                          Text('+251-993-87-22-46 | +251-969-23-90-94', style: TextStyle(
                            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400
                          )),
                          Text('candidates@ethiojobs.net', style: TextStyle(
                            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400
                          )),
                          SizedBox(height: 30),
                          Text('About Us | Contact Us | FAQs', style: TextStyle(
                            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400
                          )),
                          SizedBox(height: 10),

                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: 255,
                            child: Row(
                              children: [
                                SizedBox(width: 15),
                                FaIcon(FontAwesomeIcons.linkedin, color: Colors.white, size: 30),
                                SizedBox(width: 11),
                                FaIcon(FontAwesomeIcons.instagram, color: Colors.white, size: 29),
                                SizedBox(width: 11),
                                FaIcon(FontAwesomeIcons.youtube, color: Colors.white, size: 29),
                                SizedBox(width: 11),
                                FaIcon(FontAwesomeIcons.xTwitter, color: Colors.white, size: 29),
                                SizedBox(width: 11),
                                FaIcon(FontAwesomeIcons.facebook, color: Colors.white, size: 29),
                                SizedBox(width: 11),
                                FaIcon(FontAwesomeIcons.telegram, color: Colors.white, size: 32),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 110),
                              FaIcon(FontAwesomeIcons.copyright, color: Colors.white, size: 10),
                              SizedBox(width: 5),
                              Text('2004-2024 Ethio Jobs', style: TextStyle(color: Colors.white)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

            ],
          ),
        ),
      );
  }
  }