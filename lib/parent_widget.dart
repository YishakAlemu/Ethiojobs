import 'package:flutter/material.dart';
import 'home.dart';
import 'job_details.dart';

class ParentWidget extends StatefulWidget {
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
        PopupMenuButton<String>(
  icon: Icon(Icons.menu, size: 30),
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