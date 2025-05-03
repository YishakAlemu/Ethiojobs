import 'package:flutter/material.dart';
import 'home.dart'; 
import 'companies.dart';
import 'search.dart';

class companyDetailspage extends StatefulWidget {
  @override
  _companyDetailspageState createState() => _companyDetailspageState();
}

class _companyDetailspageState extends State<companyDetailspage> {
  late Job job; // Declare a variable to hold the Job object

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    job = ModalRoute.of(context)!.settings.arguments as Job; // Get the Job object
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.white,
    title: Text(''), 
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(150.0), 
      child: Column(
        children: [
          SizedBox(height: 30), 
          Row(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Image.asset('assets/peoplefun_1.jpg', height: 70, width: 90),
              SizedBox(width: 1), 
              Image.asset('assets/peoplefun_2.webp', height: 70, width: 90),
              SizedBox(width: 1),
              Image.asset('assets/peoplefun_3.jpg', height: 70, width: 90),
              SizedBox(width: 1),
              Image.asset('assets/peoplefun_4.jpg', height: 70, width: 90),
             
            ],
          ),
          SizedBox(height: 10), 
          Row(children: [
            Text(job.title),
            //Image.asset(''),
          ],),
          TabBar(
            indicatorColor: const Color.fromARGB(255, 72, 193, 156), // Color of the tab indicator
            labelColor: const Color.fromARGB(255, 72, 193, 156), // Color of the active tab text
            unselectedLabelColor: Colors.grey, 
            tabs: [
              Tab(text: 'Overview'),
              Tab(text: 'Jobs'),
            ],
          ),
          
        ],
      ),
    ),
  ),
  backgroundColor: Colors.white,
  body: TabBarView(
    children: [
      OverviewTab(job: job),
      CompaniesTab(job: job),
    ],
  ),
)
    );
  }
}

class OverviewTab extends StatefulWidget {
  final Job job;

  OverviewTab({required this.job});
  @override
  _OverviewTabState createState() => _OverviewTabState();
}

class _OverviewTabState extends State<OverviewTab> {
  

  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
        ],
      ),
    );
  }
}

class CompaniesTab extends StatefulWidget {
  final Job job;

  CompaniesTab({required this.job});
  @override
  _CompaniesTabState createState() => _CompaniesTabState();
}

class _CompaniesTabState extends State<CompaniesTab> {
 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
        ],
      ),
    );
  }
}