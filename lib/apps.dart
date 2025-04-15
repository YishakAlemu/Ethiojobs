import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Appspage extends StatefulWidget {
  const Appspage({super.key});

  @override
  _AppspageState createState() => _AppspageState();
}

class _AppspageState extends State<Appspage> with SingleTickerProviderStateMixin {
  int _selectedNavIndex = 1;
  double progress = 0.5; // Define the progress variable with a value between 0.0 and 1.0
  int? _slide1 = 1;
  late TabController _tabController;

  

  Widget _getSegment1(int? segment1) {
    switch (segment1) {
      case 1:
        return SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Container(
                    width: 366,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            padding: const EdgeInsets.all(5.0),
                            color: Colors.red,
                            height: 150,
                            width: 150,
                            child: Image.asset(
                              'assets/ethiojobs.webp',
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
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
                              'Computer Science',
                              style: TextStyle(color: Colors.black, fontSize: 12.5, fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2, // Text color
                            ),
                          ),
                        ]),
                        TextButton(
                          onPressed: () {
                            // Define the action when the button is pressed
                          },
                          child: Text(
                            'Senior full stack developer',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(children: [
                          SizedBox(width: 20),
                          Text(
                            '4 months ago by',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(width: 5),
                          TextButton(
                            onPressed: () {
                              // Define the action when the button is pressed
                            },
                            child: Text(
                              'Ethiojobs & AFRINET',
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(255, 72, 193, 156),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ]),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: TextButton.icon(
                                onPressed: () {
                                  // Button action
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero, // Remove any padding from the button
                                  minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
                                ),
                                icon: Icon(
                                  Icons.location_on_outlined,
                                  size: 17,
                                  color: Colors.black, // Lightning icon color
                                ),
                                label: Text(
                                  'Addis Ababa',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.8,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: TextButton.icon(
                                onPressed: () {
                                  // Button action
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero, // Remove any padding from the button
                                  minimumSize: Size(0, 0), // Ensure minimum size is zero to avoid extra space
                                ),
                                icon: Icon(
                                  Icons.calendar_month_outlined,
                                  size: 16,
                                  color: Colors.black, // Lightning icon color
                                ),
                                label: Text(
                                  'April 10th, 2025',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.8,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Container(
                                padding: EdgeInsets.only(top: 2),
                                color: Colors.white,
                                height: 38,
                                width: 140,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Button action
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0), // Rounded corners
                                    ),
                                    backgroundColor: const Color.fromARGB(255, 72, 193, 156),
                                  ),
                                  child: Text(
                                    'Withdraw',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.8,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 25),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Container(
                                padding: EdgeInsets.only(top: 2),
                                color: Colors.white,
                                height: 38,
                                width: 140,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Button action
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0), // Rounded corners
                                    ),
                                    backgroundColor: const Color.fromARGB(200, 255, 255, 255),
                                  ),
                                  child: Text(
                                    'See More',
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 72, 193, 156),
                                      fontSize: 14.8,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 380,
                  width: 366,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 15,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      case 2:
        return Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Application Status',
            style: TextStyle(fontSize: 18),
          ),
        );
      default:
        return Container(); // Default case
    }
  }
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int _getIndex(String label) {
    switch (label) {
      case 'Jobs':
        return 0;
      case 'Applications':
        return 1;
      case 'Profile':
        return 2;
      case 'Alert':
        return 3;
      case 'Saved Jobs':
        return 4;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget buildNavItem(IconData icon, String label, VoidCallback onTap, double iconSize, Color iconColor) {
      bool isSelected = _selectedNavIndex == _getIndex(label);
      return InkWell(
        onTap: () {
          onTap();
          setState(() {
            _selectedNavIndex = _getIndex(label); // Update the selected index
          });
        },
        child: SizedBox(
          width: 60,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: iconSize, color: isSelected ? iconColor : const Color.fromARGB(255, 0, 0, 0)),
              SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(fontSize: 12, color: isSelected ? iconColor : const Color.fromARGB(255, 0, 0, 0)),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255,255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 16),
              child: Center(
                child: Container(
                  height: 55,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 0,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/jondon.webp'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 0),
                          Text(
                            'Jon Don',
                            style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'testabenezer@gmail.com',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height:600,
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(text: 'My Applications'),
                      Tab(text: "Application's Status"),
                    ],
                  indicatorColor: const Color.fromARGB(255, 72, 193, 156), // Color of the indicator below the active tab
                  labelColor: Colors.black, // Color of the text for the active tab
                  unselectedLabelColor: Colors.black38, // Color for the inactive tabs
                  indicatorWeight: 2.0
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        _getSegment1(1), // Call your existing method for My Applications
                        _getSegment1(2), // Call your existing method for Application Status
                      ],
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
        child: Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildNavItem(
                Icons.search_rounded,
                'Jobs',
                () {
                  Navigator.pushNamed(context, '/home');
                },
                22,
                const Color.fromARGB(255, 72, 193, 156),
              ),
              buildNavItem(Icons.menu_book_outlined, 'Applications', () {
                Navigator.pushNamed(context, '/apps');
              }, 22, const Color.fromARGB(255, 72, 193, 156)),
              buildNavItem(Icons.person_outline_outlined, 'Profile', () {
                Navigator.pushNamed(context, '/profile');
              }, 35, const Color.fromARGB(255, 72, 193, 156)),
              buildNavItem(Icons.add_alert_sharp, 'Alert', () {
                // Action for Alert
              }, 22, const Color.fromARGB(255, 72, 193, 156)),
              buildNavItem(Icons.bookmark_added, 'Saved Jobs', () {
                Navigator.pushNamed(context, '/saved');
              }, 22, const Color.fromARGB(255, 72, 193, 156)),
            ],
          ),
        ),
      ),
    );
  }
}