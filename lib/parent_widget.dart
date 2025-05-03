import 'package:ethiojobs/account.dart';
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
import 'cv_editor.dart';
import 'resume_builder.dart';
import 'companies.dart';
import 'filter.dart';
import 'company_details.dart';
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
    final currentRoute = ModalRoute.of(context)?.settings.name;
    return Scaffold(
      
       
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
                builder = (BuildContext context) => Savedpage();
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
                case '/cv_editor':
                builder = (BuildContext context) => Cv_editorpage();
                break;
                 case '/account':
                builder = (BuildContext context) => Accountpage();
                break;
                case '/resume_builder':
                builder = (BuildContext context) => Resume_builderpage();
               break;
                case '/account':
                builder = (BuildContext context) => Accountpage();
               break;

                case '/companies':
                builder = (BuildContext context) => Companiespage(onJobSelected:onJobSelected);
                break;
               case '/filter':
                builder = (BuildContext context) => Filterpage();
               break;
               case '/company_details':
                builder = (BuildContext context) => companyDetailspage();
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