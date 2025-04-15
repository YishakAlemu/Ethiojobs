import 'package:flutter/material.dart';
import 'home.dart';
import 'job_details.dart';
import 'login.dart'; 
import 'signup.dart';
import 'profile.dart';
import 'apps.dart';
import 'saved.dart';
import 'onboarding.dart';
import 'upload.dart';
import 'apply.dart';
import 'apply2.dart';
class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  void onJobSelected(String job) {
    _navigatorKey.currentState!.pushNamed(
      '/jobDetail',
      arguments: job,
    );
  }

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
 
      
    
  
        

        PopupMenuButton<String>(
  icon: Icon(Icons.menu, size: 32),
  itemBuilder: (BuildContext context) {
    return [
      PopupMenuItem<String>(
  value: 'Find Jobs',
  child: Row(
    children: [
      SizedBox(width:10),
      Icon(Icons.home, color: const Color.fromARGB(255, 0, 0, 0), size: 20),
      SizedBox(width: 8),
      Text(
        'Find Jobs',
        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
      ),
    ],
  ),
),
      // PopupMenuItem<String>(
      //   value: 'Find Companies',
      //   child: Text('Find Companies'),
      // ),
      // PopupMenuItem<String>(
      //   value: 'Blog',
      //   child: Text('Blog'),
      // ),
      PopupMenuItem<String>(
        value: 'Contact us',
        child:Row(children: [
          SizedBox(width:10),
          Icon(Icons.phone, color: const Color.fromARGB(255, 0, 0, 0),size:20),
          SizedBox(width:8),
          Text('Contact us', style: TextStyle(color:const Color.fromARGB(255, 0, 0, 0)),),
        ],)
      ),
      PopupMenuItem<String>(
        value: 'Log In',
        child:Row(children: [
          SizedBox(width:10),
          Icon(Icons.login,color:Colors.black, size:20),
          SizedBox(width:8),
          Text('Log in', style: TextStyle(color:Colors.black)),
        ],)
      ),
      PopupMenuItem<String>(
        value: 'Sign Up',
        child:Row(children: [
          SizedBox(width:10),
          Icon(Icons.person_add,color:Colors.black, size:20),
          SizedBox(width:8),
          Text('Sign up', style: TextStyle(color:Colors.black)),
        ],)
      ),
      PopupMenuItem<String>(
  value: 'Log out',
  child: Row(
    children: [
      SizedBox(width:10),
      Icon(Icons.logout, color: Colors.black, size: 20),
      SizedBox(width: 8),
      Text(
        'Log out',
        style: TextStyle(color: Colors.black),
      ),
    ],
  ),
),

      // PopupMenuItem<String>(
      //   value: 'Employers, are you recruiting?',
      //   child: Text('Employers, are you recruiting?'),
      // ),
    ];
  },
  onSelected: (String value) {
                  if (value == 'Log In') {
                    _navigatorKey.currentState!.pushNamed('/login');
                  }
                   else if (value == 'Sign Up') {
                    _navigatorKey.currentState!.pushNamed('/signup');
                }
                else if (value == 'Find Jobs') {
                    _navigatorKey.currentState!.pushNamed('/home');}
                    else if (value == 'Log out') {
                    _navigatorKey.currentState!.pushNamed('/logout');} 


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
                case '/home': 
                builder = (BuildContext context) => Homepage(onJobSelected:onJobSelected);
                break;
                case '/apps': 
                builder = (BuildContext context) => Appspage();
                break;
                case '/saved': 
                builder = (BuildContext context) => Savedpage(onJobSelected: onJobSelected);
                break;
                case '/onboarding':
                builder = (BuildContext context) => Onboardingpage();
                break;
                case '/upload': 
                builder = (BuildContext context) => Uploadpage();
                break;
                case '/apply': 
                builder = (BuildContext context) => Applypage();
                break;
                 case '/apply2': 
                builder = (BuildContext context) => Apply2page();
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