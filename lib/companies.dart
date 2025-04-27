import 'package:flutter/material.dart';

class Companiespage extends StatefulWidget {
  const Companiespage({super.key});
  

  @override
  _CompaniespageState createState() => _CompaniespageState();
}

class _CompaniespageState extends State<Companiespage> {
  int _selectedNavIndex = 1;
int _getIndex(String label) {
    switch (label) {
      case 'Jobs':
        return 0;
      case 'Companies':
        return 1;
      case 'My Applications':
        return 2;
      case 'Profile':
        return 3;
  
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
     Widget buildNavItem(IconData icon, String label, VoidCallback onTap,double iconSize,Color iconColor,double scaleFactor,) {
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
          Transform.scale(
  scale: scaleFactor, // Pass your scale factor here
  child: Icon(
    icon, // Your icon
    size: iconSize, // Base size of the icon
    color: isSelected ? iconColor : const Color.fromARGB(255, 0, 0, 0), // Color based on selection
  ),
),
          SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(fontSize: 12, color: isSelected ? iconColor : const Color.fromARGB(255, 0, 0, 0),),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}

    return Scaffold(
      
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      child:Center(child: Text('Companies Page'))
      ),
       bottomNavigationBar: 
      BottomAppBar(
        height:67,
        elevation: 8,
  color: Colors.white,
  child: Container(
    
    padding: EdgeInsets.symmetric(horizontal: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:  [
        buildNavItem(
          
          Icons.search_rounded,
          'Jobs',
          () {
            Navigator.pushNamed(context, '/home');
          },
          22,
          const Color.fromARGB(255, 0, 0, 0), 0.7
          
        ),
        buildNavItem(Icons.business, 'Companies', () {
         Navigator.pushNamed(context, '/companies');
        }, 22, const Color.fromARGB(255, 72, 193, 156),0.7),
        buildNavItem(Icons.assignment, 'My Applications', () {
          Navigator.pushNamed(context, '/apps');
        }, 22, const Color.fromARGB(255, 0, 0, 0),0.7),
        
      
        
        buildNavItem(Icons.person_outline_outlined, 'Profile', () {
          Navigator.pushNamed(context, '/profile');
        }, 22, const Color.fromARGB(255, 0, 0, 0),0.7),
      ],
    ),
  ),
),
    );
  }
}