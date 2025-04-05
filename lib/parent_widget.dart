import 'package:flutter/material.dart';
import 'home.dart';
import 'job_details.dart';
import 'login.dart'; 
import 'signup.dart';
import 'profile.dart';

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
  preferredSize: Size.fromHeight(65.0),
  child: AppBar(
    
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
        Image.asset(
          'assets/ethiojobs.webp',
          height: 125,
          width: 145,
        ),
        SizedBox(width:90),
 Container(
  
  width:2,
   child: Icon(
          Icons.person_outline_outlined,
          color: Color.fromARGB(255, 72, 193, 156),
          size: 22,
        ),
 ),
      PopupMenuButton<String>(
        icon: Icon(Icons.keyboard_arrow_down_sharp, size: 25), // Downward-facing arrow icon
        onSelected: (value) {
          // Handle the selected value
          if (value == 'Profile') {
            _navigatorKey.currentState!.pushNamed('/profile');
          } else if (value == 'Log Out') {
            _navigatorKey.currentState!.pushNamed('/logout');
          }
        },
        itemBuilder: (BuildContext context) {
          return {'Profile', 'Log Out'}.map((String choice) {
            return PopupMenuItem<String>(
              value: choice,
              child: Text(choice),
            );
          }).toList();
        },
        offset: Offset(0, 35),
      ),
    
  
        

        PopupMenuButton<String>(
  icon: Icon(Icons.menu, size: 32),
  itemBuilder: (BuildContext context) {
    return [
      PopupMenuItem<String>(
        value: 'Find Jobs',
        child: Text('Find Jobs'),
      ),
      PopupMenuItem<String>(
        value: 'Find Companies',
        child: Text('Find Companies'),
      ),
      PopupMenuItem<String>(
        value: 'Blog',
        child: Text('Blog'),
      ),
      PopupMenuItem<String>(
        value: 'Contact Us',
        child: Text('Contact Us'),
      ),
      PopupMenuItem<String>(
        value: 'Log In',
        child: Text('Log In'),
      ),
      PopupMenuItem<String>(
        value: 'Sign Up',
        child: Text('Sign Up'),
      ),
      PopupMenuItem<String>(
        value: 'Employers, are you recruiting?',
        child: Text('Employers, are you recruiting?'),
      ),
    ];
  },
  onSelected: (String value) {
                  if (value == 'Log In') {
                    _navigatorKey.currentState!.pushNamed('/login');
                  }
                   else if (value == 'Sign Up') {
                    _navigatorKey.currentState!.pushNamed('/signup');
                }
  },
  offset: Offset(0, 35), 
)
      ],
    ),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 5,
            shadowColor: Colors.black,
      ),
          ),
      body: WillPopScope(
        onWillPop: () async {
          if (_navigatorKey.currentState!.canPop()) {
            _navigatorKey.currentState!.pop(); // Navigate back within the Navigator
            return false; // Prevent default back button behavior
          }
          return true; // Allow app to quit if no more pages to pop
        },
        child: Navigator(
          key: _navigatorKey, // Use a Navigator key to manage navigation
          onGenerateRoute: (RouteSettings settings) {
            WidgetBuilder builder;
            switch (settings.name) {
              case '/':
                builder = (BuildContext context) => Homepage(
                      onJobSelected: (job) {
                        _navigatorKey.currentState!.pushNamed(
                          '/jobDetail',
                          arguments: job,
                        );
                      },
                    );
                break;
              case '/jobDetail':
                final String jobTitle = settings.arguments as String;
                builder = (BuildContext context) => JobDetailPage(jobTitle: jobTitle);
                break;
                case '/login': 
                builder = (BuildContext context) => Loginpage();
                break;
                case '/signup': 
                builder = (BuildContext context) => Signuppage();
                break;
                case '/profile': 
                builder = (BuildContext context) => Profilepage();
                break;
                
              default:
                throw Exception('Invalid route: ${settings.name}');
            }
            return MaterialPageRoute(builder: builder, settings: settings);
          },
        ),
      ),
    );
  }
}