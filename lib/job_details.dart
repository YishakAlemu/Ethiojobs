import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:url_launcher/url_launcher.dart';

class JobDetailPage extends StatelessWidget {
  final String jobTitle;

  const JobDetailPage({Key? key, required this.jobTitle}) : super(key: key);
             
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
                      child: Text(
                        'Computer Science & IT',
                        style: TextStyle(color: Colors.black, fontSize: 12.5, fontWeight: FontWeight.w400),
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
                          borderRadius: BorderRadius.circular(18.0), // Rounded corners
                        ),
                        backgroundColor: const Color.fromARGB(200, 255, 255, 255), // Background color
                      ),
                      child: Text(
                        'Software Engineering',
                        style: TextStyle(color: Colors.black, fontSize: 12.5, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(height: 90),
                  Container(
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
                        Container(
                          height: 65,
                          width: 370,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  topRight: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ), // Rounded corners
                              ),
                              backgroundColor: Color.fromARGB(255, 72, 193, 156), // Background color
                            ),
                            child: Text(
                              'Apply Now',
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisSize: MainAxisSize.min, // Size of the Row
                            children: [
                              Icon(Icons.location_on_outlined, color: Colors.black, size: 17), // Icon
                              SizedBox(width: 16), // Space between icon and text
                              Text(
                                'Location Type: Office',
                                style: TextStyle(color: Colors.black, fontSize: 16),
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
                              Text(
                                'Deadline: April 10th, 2025',
                                style: TextStyle(color: Colors.black, fontSize: 16),
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
                              Icon(Icons.person_add_alt_1_outlined, color: Colors.black, size: 17), // Icon
                              SizedBox(width: 16), // Space between icon and text
                              Text(
                                'Career Level: Mid Level (3-5 years)',
                                style: TextStyle(color: Colors.black, fontSize: 16),
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
                              Text(
                                'Language: 1',
                                style: TextStyle(color: Colors.black, fontSize: 16),
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
                              Text(
                                'Employment Type: Full time',
                                style: TextStyle(color: Colors.black, fontSize: 16),
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
                              Icon(Icons.person_add_alt_1_outlined, color: Colors.black, size: 17), // Icon
                              SizedBox(width: 16), // Space between icon and text
                              Text(
                                'Number of people required: 1',
                                style: TextStyle(color: Colors.black, fontSize: 16),
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
                              Icon(Icons.person_add_alt_1_outlined, color: Colors.black, size: 17), // Icon
                              SizedBox(width: 16), // Space between icon and text
                              Text(
                                'Work Experience: 3-5 years',
                                style: TextStyle(color: Colors.black, fontSize: 16),
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
                              Text(
                                'Salary Range: Undefined ETB',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                  Container(
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Text(
                          'About the Job',
                          style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt Neque porro quisquam est qui dolorem ipsum quia dolor sit amet consectetur adipisci velit Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem Ut wisi enim ad minim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi Nam liber tempor cum soluta nobis est eligendi optio cumque nihil imperdiet doming id quod mazim placerat facer possimus omnis voluptas assumenda est omnis dolor repellendus Tempor cillum fugiat nulla pariatur At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga Et harum quidem rerum facilis est et expedit distinctio Nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus Tempor cillum fugiat nulla pariatur At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga Et harum quidem rerum facilis est et expedit distinctio Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi Nam liber tempor cum soluta nobis est eligendi optio cumque nihil imperdiet doming id quod mazim placerat facer possimus omnis voluptas assumenda est omnis dolor repellendus",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                  Container(
                    color: Colors.green,
                    child: Column(
                      children: [
                        Text(
                          'About You',
                          style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 50),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt Neque porro quisquam est qui dolorem ipsum quia dolor sit amet consectetur adipisci velit Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem Ut wisi enim ad minim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi Nam liber tempor cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus Tempor cillum fugiat nulla pariatur At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga Et harum quidem rerum facilis est et expedit distinctio Nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus Tempor cillum fugiat nulla pariatur At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga Et harum quidem rerum facilis est et expedit distinctio Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi Nam liber tempor cum soluta nobis est eligendi optio cumque nihil imperdiet doming id quod mazim placerat facer possimus omnis voluptas assumenda est omnis dolor repellendus",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70),
                  Container(
                    margin : EdgeInsets.only(left:0),
                    height: 180,
                    width:370,
                    color: Colors.red,
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
                              Text(
                                'Microsoft Office, Excel, PackL word\n PowerPoint',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisSize: MainAxisSize.min, // Size of the Row
                            children: [
                              Icon(Icons.done_outline, color: Colors.green, size: 23), // Icon
                              SizedBox(width: 16), // Space between icon and text
                              Text(
                                'Communication',
                                style: TextStyle(color: Colors.black, fontSize: 16),
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
                              Text(
                                'Accounting',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Container(
                    height:300,
                    color: Colors.blue,
                    child:Column(
                      children: [
                       Text(
                            'How To Apply', style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.w600)
                       ),
                       GestureDetector(
    onTap: () async {
      final Uri url = Uri.parse('https://www.example.com'); // Replace with your link
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    },
                       )
                    ],)

                  ),
                  


                  Container(
                    height: 600,
                    color: Color.fromARGB(255, 72, 193, 156), // Background color for the footer
                    margin: EdgeInsets.only(top: 25), // Spacing above the footer
                    child: Center(
                      child: Text(
                        'Footer',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}