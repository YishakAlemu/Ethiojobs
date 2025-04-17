import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class JobDetailPage extends StatelessWidget {
  final String jobTitle;
  final String url = 'https://www.example.com';
  const JobDetailPage({super.key, required this.jobTitle});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // First main container
                Container(
                  height: 380,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(87, 182, 147, 1),
                        Color.fromRGBO(57, 131, 104, 1),
                        Color.fromRGBO(99, 142, 123, 1),
                        Color.fromRGBO(81, 186, 160, 1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      transform: GradientRotation(math.pi / 4),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        right: 140,
                        top: 115,
                        child: Text(
                          'Addis Ababa',
                          style: TextStyle(fontSize: 22, color: Colors.white70),
                        ),
                      ),
                      Positioned(
                        right: 80,
                        top: 20,
                        child: IconButton(
                          icon: Icon(Icons.bookmark_border_outlined, size: 27),
                          onPressed: () {
                            // Bookmark button action
                          },
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 20,
                        child: IconButton(
                          icon: Icon(Icons.share, size: 26, color: Colors.white70),
                          onPressed: () {
                            // Share button action
                          },
                        ),
                      ),
                      Positioned(
                        right: 95,
                        bottom: -140, // Adjust this value to control how much it overlaps
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26, // Shadow color
                                blurRadius: 10, // Shadow blur radius
                                offset: Offset(0, 4), // Shadow offset
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 100,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 100,
                              backgroundImage: AssetImage('assets/ethiojobs.webp'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Circular Container
              ],
            ),
            Container(
              width: 140, // Width of the SizedBox
              height: 185,
              color: Colors.transparent,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    "View all open positions",
                    style: TextStyle(
                      color: Color.fromARGB(255, 72, 193, 156),
                      fontSize: 17,
                      decoration: TextDecoration.underline, // Underline decoration
                      decorationColor: Colors.green, // Optional: underline color
                      decorationThickness: 1,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: Text(
                      jobTitle,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 35.0),
                    child: ElevatedButton(
  onPressed: () {
    // Action when button is pressed
  },
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0), // Rounded corners
    ),
    backgroundColor: const Color.fromARGB(200, 255, 255, 255), // Background color
  ),
  child: SizedBox(
    width: 150, // Set a fixed width for the button
    child: Text(
      'Computer Science & IT', // Example of longer text
      style: TextStyle(color: Colors.black, fontSize: 12.5, fontWeight: FontWeight.w400),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      textAlign: TextAlign.center, // Center the text
    ),
  ),
)
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 35.0),
                    child: ElevatedButton(
  onPressed: () {
    // Action when button is pressed
  },
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0), // Rounded corners
    ),
    backgroundColor: const Color.fromARGB(200, 255, 255, 255), // Background color
  ),
  child: SizedBox(
    width: 150, // Set a fixed width for the button
    child: Text(
      'Software Engineering', // Example of longer text
      style: TextStyle(color: Colors.black, fontSize: 12.5, fontWeight: FontWeight.w400),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      textAlign: TextAlign.center, // Center the text
    ),
  ),
)
                  ),
                  SizedBox(height: 20),
                SingleChildScrollView(
                  child:Container(
  alignment: Alignment.centerLeft,
  height: 500,
  width: 370,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15.0),  // Circular border at the top left
      topRight: Radius.circular(15.0), // Circular border at the top right
      bottomLeft: Radius.circular(0),   // Sharp corner at the bottom left
      bottomRight: Radius.circular(0),  // Sharp corner at the bottom right
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black26, // Shadow color
        blurRadius: 5, // Shadow blur radius
        offset: Offset(0, 2), // Shadow offset
      ),
    ],
  ),
  child: Column(
    children: [
      // SizedBox(
      //   height: 65,
      //   width: 370,
      //   child: ElevatedButton(
      //     onPressed: () {},
      //     style: ElevatedButton.styleFrom(
      //       alignment: Alignment.centerLeft,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(15.0),
      //           topRight: Radius.circular(15.0),
      //           bottomLeft: Radius.circular(0),
      //           bottomRight: Radius.circular(0),
      //         ), // Rounded corners
      //       ),
      //       backgroundColor: Color.fromARGB(255, 72, 193, 156), // Background color
      //     ),
      //     child: Text(
      //       'Apply Now',
      //       style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
      //     ),
      //   ),
      // ),
      SizedBox(height: 30),
      Expanded( // Allow the following rows to fill available space
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min, // Size of the Row
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.black, size: 17), // Icon
                  SizedBox(width: 16), // Space between icon and text
                  Expanded( // Allow text to wrap within available space
                    child: Text(
                      'Location Type: Office',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min, // Size of the Row
                children: [
                  Icon(Icons.calendar_month_outlined, color: Colors.black, size: 17), // Icon
                  SizedBox(width: 16), // Space between icon and text
                  Expanded( // Allow text to wrap within available space
                    child: Text(
                      'Deadline: April 10th, 2025',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min, // Size of the Row
                children: [
                  Icon(Icons.how_to_reg, color: Colors.black, size: 17), // Icon
                  SizedBox(width: 16), // Space between icon and text
                  Expanded( // Allow text to wrap within available space
                    child: Text(
                      'Career Level: Mid Level (3-5 years)',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min, // Size of the Row
                children: [
                  Icon(Icons.translate_outlined, color: Colors.black, size: 17), // Icon
                  SizedBox(width: 16), // Space between icon and text
                  Expanded( // Allow text to wrap within available space
                    child: Text(
                      'Language: 1',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min, // Size of the Row
                children: [
                  Icon(Icons.note_alt_outlined, color: Colors.black, size: 17), // Icon
                  SizedBox(width: 16), // Space between icon and text
                  Expanded( // Allow text to wrap within available space
                    child: Text(
                      'Employment Type: Full time',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min, // Size of the Row
                children: [
                  Icon(Icons.how_to_reg, color: Colors.black, size: 17), // Icon
                  SizedBox(width: 16), // Space between icon and text
                  Expanded( // Allow text to wrap within available space
                    child: Text(
                      'Number of people required: 1',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min, // Size of the Row
                children: [
                  Icon(Icons.how_to_reg, color: Colors.black, size: 17), // Icon
                  SizedBox(width: 16), // Space between icon and text
                  Expanded( // Allow text to wrap within available space
                    child: Text(
                      'Work Experience: 3-5 years',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min, // Size of the Row
                children: [
                  Icon(Icons.attach_money_outlined, color: Colors.black, size: 17), // Icon
                  SizedBox(width: 16), // Space between icon and text
                  Expanded( // Allow text to wrap within available space
                    child: Text(
                      'Salary Range: Undefined ETB',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),
              ),
                  SizedBox(height: 100),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          width: 360,
                          margin: EdgeInsets.only(left:5),
                          child: Text(
                            'About the Job',
                            style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt Neque porro quisquam est qui dolorem ipsum quia dolor sit amet consectetur adipisci velit Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem Ut wisi enim ad minim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi Nam liber tempor cum soluta nobis est eligendi optio cumque nihil imperdiet doming id quod mazim placerat facer possimus omnis voluptas assumenda est omnis dolor repellendus Tempor cillum fugiat nulla pariatur At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga Et harum quidem rerum facilis est et expedit distinctio Nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus Tempor cillum fugiat nulla pariatur At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga Et harum quidem rerum facilis est et expedit distinctio Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi Nam liber tempor cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod mazim placerat facer possimus omnis voluptas assumenda est omnis dolor repellendus",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left:5),
                          width:380,
                          child: Text(
                            'About You',
                            style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt Neque porro quisquam est qui dolorem ipsum quia dolor sit amet consectetur adipisci velit Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem Ut wisi enim ad minim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi Nam liber tempor cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus Tempor cillum fugiat nulla pariatur At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga Et harum quidem rerum facilis est et expedit distinctio Nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70),
                  Container(
  margin: EdgeInsets.only(left: 0),
  width: 370,
  color: Colors.white,
  child: Column(
    children: [
      Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Requirement Skill',
                style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(0),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min, // Size of the Row
          children: [
            Icon(Icons.done_outline, color: Colors.green, size: 23), // Icon
            SizedBox(width: 10), // Space between icon and text
            Expanded( // Allow text to wrap within available space
              child: Text(
                'Microsoft Office, Excel, PackL word PowerPoint',
                style: TextStyle(color: Colors.black, fontSize: 16),
                overflow: TextOverflow.visible, // Allow overflow to wrap
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 0),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.done_outline, color: Colors.green, size: 23), // Icon
            SizedBox(width: 10), // Space between icon and text
            Expanded( // Allow text to wrap within available space
              child: Text(
                'Communication ',
                style: TextStyle(color: Colors.black, fontSize: 16),
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min, // Size of the Row
          children: [
            Icon(Icons.done_outline, color: Colors.green, size: 23), // Icon
            SizedBox(width: 16), // Space between icon and text
            Expanded( // Allow text to wrap within available space
              child: Text(
                'Accounting',
                style: TextStyle(color: Colors.black, fontSize: 16),
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),
                  
                  SizedBox(height: 50),
                  Container(
                    height: 300,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      // Allow scrolling if content exceeds height
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'How To Apply',
                              style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(height:15),
                          InkWell(
                            onTap: () => _launchURL(url),
                            child: Text(
                              url,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                 SizedBox(height:70),
                   Container(
  margin: EdgeInsets.only(left: 1),
  width: 370,
  color: Colors.white,
  child: Column(
    children: [
      Container(
        width: 370,
        color: Colors.white,
        margin: EdgeInsets.only(left: 1),
        child: Text(
          'More Jobs by Ethiojobs',
          style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w400),
        ),
      ),
      SizedBox(height: 15),
      Row(
        children: [
          SizedBox(width: 10),
          Expanded( // Use Expanded to allow the text to take available space
            child: Text(
              'DATA ENGINEER',
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
              overflow: TextOverflow.ellipsis, // Show ellipsis when overflow occurs
              maxLines: 1, // Limit to one line
            ),
          ),
          SizedBox(width: 10),
          TextButton(
            onPressed: () {
              // Your action here
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero, // Remove any padding from the button
              minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
            ),
            child: Icon(
              Icons.bookmark_border,
              color: Colors.black54,
              size: 24.5,
            ),
          )
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: [
          SizedBox(width: 10),
          Icon(Icons.location_on_outlined, color: Colors.black, size: 17),
          SizedBox(width: 5),
          Text(
            'Office',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(width: 100),
          Icon(Icons.calendar_month_outlined, color: Colors.black, size: 17),
          SizedBox(width: 10),
          Text(
            'April 10th, 2025',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
      Divider(thickness: 1, color: Colors.black38, indent: 10, endIndent: 10),
      Row(
        children: [
          SizedBox(width: 10),
          Expanded( // Use Expanded for wrapping
            child: Text(
              'PRODUCT MANAGER',
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          SizedBox(width: 10),
          TextButton(
            onPressed: () {
              // Your action here
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(0, 0),
            ),
            child: Icon(
              Icons.bookmark_border,
              color: Colors.black54,
              size: 24.5,
            ),
          )
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: [
          SizedBox(width: 10),
          Icon(Icons.location_on_outlined, color: Colors.black, size: 17),
          SizedBox(width: 5),
          Text(
            'Office',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(width: 100),
          Icon(Icons.calendar_month_outlined, color: Colors.black, size: 17),
          SizedBox(width: 10),
          Text(
            'April 10th, 2025',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
      Divider(thickness: 1, color: Colors.black38, indent: 10, endIndent: 10),
      Row(
        children: [
          SizedBox(width: 10),
          Expanded( // Use Expanded for wrapping
            child: Text(
              'UI/UX DESIGNER',
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          SizedBox(width: 10),
          TextButton(
            onPressed: () {
              // Your action here
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(0, 0),
            ),
            child: Icon(
              Icons.bookmark_border,
              color: Colors.black54,
              size: 24.5,
            ),
          )
        ],
      ),
      SizedBox(height: 5),
      Row(
        children: [
          SizedBox(width: 10),
          Icon(Icons.location_on_outlined, color: Colors.black, size: 17),
          SizedBox(width: 5),
          Text(
            'Office',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(width: 100),
          Icon(Icons.calendar_month_outlined, color: Colors.black, size: 17),
          SizedBox(width: 10),
          Text(
            'April 10th, 2025',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
      Divider(thickness: 1, color: Colors.black38, indent: 10, endIndent: 10),
    ],
  ),
),



                  SizedBox(height: 20),
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
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
  elevation: 8,
  color: Colors.white,
  child: SizedBox(
    height: 65,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(children:[
          SizedBox(width:0),
         Container(
          height:45,
          width:60,
          decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 10,
        offset: Offset(0, 4),
      ),
    ],
    border: Border.all(
      color: Colors.black,
      width: 2,
    ),
  ),
           child: IconButton(icon: Icon(Icons.bookmark_border_outlined, 
                    color: Colors.black, 
                    size: 26),
                    onPressed: () { }),
         ),
        SizedBox(width:15),
        SizedBox(
          width:270,
          height:45,
          child: ElevatedButton(
            onPressed: () {
             Navigator.pushNamed(context, '/apply');
            },
            style: ElevatedButton.styleFrom(
          
              backgroundColor: const Color.fromARGB(255, 72, 193, 156),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 1,
            ),
            child: const Text(
              'Apply Now',
              style: TextStyle(fontSize: 16, color:Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ]
      )
      ),
    ),
  ),
),
    );
  }
}