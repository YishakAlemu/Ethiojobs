import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<Homepage> {
  final ScrollController _scrollController = ScrollController();
  final List<String> _categories = [
    'assets/ahadu_logo.png',
    'assets/amref_logo.png',
    'assets/coca_logo.png',
    'assets/dashin_logo.png',
    'assets/komari_logo.png',
    'assets/mariestops_logo.png',
    'assets/medicalcorps_logo.png',
    'assets/unilever_logo.png',
    'assets/zemen_logo.png',
    'assets/savechild_logo.png',
    'assets/actionhunger_logo.jpg',
    'assets/bgi_logo.png',
    'assets/catholic_logo.jpg',
    'assets/care_logo.png',
    'assets/islamic_logo.jpeg',
    'assets/medicalteams_logo.jpg',
    'assets/people_logo.png',
    'assets/mercy_logo.png',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

void _startAutoScroll() {
  Future.delayed(Duration.zero, () {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent, 
        duration: const Duration(seconds: 40), // Adjust speed if needed
        curve: Curves.linear,
      ).then((_) {
        _scrollController.jumpTo(_scrollController.position.minScrollExtent); // Smooth reset
        _startAutoScroll(); // Restart seamlessly
      });
    }
  });
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Prevents keyboard issues
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/ethio_logo.png',
              height: 110,
              
            ),
            SizedBox(width: 70),
          ],
        ),
        
        actions: [
          // Builder(
          //   builder: (BuildContext context) {
          //     return IconButton(
          //       icon: const Icon(Icons.menu),
          //       onPressed: () {
          //         Scaffold.of(context).openEndDrawer();
          //       },
          //     );
          //   },
          // ),
        ],
      ),
      endDrawer: Drawer(
        
        width: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 80), // Adjust space for logo height
            ListTile(title: Text('Find jobs'), onTap: () => Navigator.pop(context)),
            ListTile(title: Text('Find companies'), onTap: () => Navigator.pop(context)),
            ListTile(title: Text('Blog'), onTap: () => Navigator.pop(context)),
            ListTile(title: Text('Contact us'), onTap: () => Navigator.pop(context)),
            ListTile(title: Text('Log in'), onTap: () => Navigator.pop(context)),
            ListTile(title: Text('Sign up'), onTap: () => Navigator.pop(context)),
            ListTile(title: Text('Employers, are you recruiting?'), onTap: () => Navigator.pop(context)),
          ],
        ),
      ),
      body: Container(
  color: Colors.white, // Set the background color
  child: SingleChildScrollView(
    child: _myLayoutWidget(), // Use the single instance of MyLayoutWidget
  ),
),
    );
  }

  Widget _myLayoutWidget() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Ethiojobs",
            style: TextStyle(
              fontSize: 46,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 72, 193, 156),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 1),
          Text(
            "Find top employers",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 72, 193, 156),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                textStyle: TextStyle(fontSize: 20, color: Colors.white),
              ),
              child: Text('Get Started', style: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(height: 80),
          
          // Search bar container
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color.fromARGB(255, 206, 202, 229), width: 1),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Job title, company, or industry",
                      hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color.fromARGB(255, 206, 202, 229), width: 1),
                  ),
                  padding: EdgeInsets.zero,
                  elevation: 0,
                  minimumSize: Size(50, 50),
                ),
                child: SvgPicture.asset(
                  'assets/search20.svg',
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          
          SizedBox(height: 50),
          Text(
            "Trusted By",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 6, 1, 19)),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 20), // Space before the auto-scrolling list

          // Auto-scrolling ListView
          Container(
            color: Colors.white,
  height: 110, // Adjust height as needed
  child: ListView.builder(
    controller: _scrollController,
    physics: NeverScrollableScrollPhysics(), // Disable manual scrolling
    scrollDirection: Axis.horizontal,
    itemCount: _categories.length * 2, // Duplicate items for infinite effect
    itemBuilder: (context, index) {
      final realIndex = index % _categories.length; // Repeat items infinitely
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 0),
        ),
        child: IgnorePointer( // Prevent any interactivity
          child: Center(
            child: Image.asset(_categories[realIndex]), // Display image
          ),
        ),
      );
    },
  ),
),


          SizedBox(height: 1000), // Add space after the auto-scrolling list
        ],
      ),
    );
  }
}