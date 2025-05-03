import 'package:flutter/material.dart';
import 'home.dart'; // Import your Homepage widget if needed

class Search2page extends StatefulWidget {
  final List<Job> allJobs;
 final String x = 'No jobs';
  const Search2page({super.key, required this.allJobs});

  @override
  _Search2pageState createState() => _Search2pageState();
}

class _Search2pageState extends State<Search2page> {
  bool _isHovered = false;

  final TextEditingController _search2Controller = TextEditingController();
  List<Job> _filteredJobs = [];

  @override
  void initState() {
    super.initState();
    _filteredJobs = []; // Initialize the filtered list with all jobs
  }

  void _filterJobs(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredJobs = []; // Show all jobs if the query is empty
        return ;
      }
      _filteredJobs = widget.allJobs
          .where((job) =>
              job.company.toLowerCase().startsWith(query.toLowerCase())
             )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  PreferredSize(
  preferredSize: Size.fromHeight(45.0),
  child: AppBar(
    
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 40),
        Text(
          'Search Companies',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(width:70),
         
         
         
      ],
    ),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              
            
      ),
          ),
     backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
              height: 50,
              width: 355,
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: Offset(0, 2), // Offset for the shadow
                  ),
                  ],
              ),
             child: Center(
  child: TextField(
    controller: _search2Controller,
    decoration: InputDecoration(
      hintText: "Search by Company Name",
      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      border: InputBorder.none,
      prefixIcon: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0), // Add some padding
        child: Icon(Icons.search, color: Colors.grey), // Search icon
      ),
    ),
   onChanged: _filterJobs,
  ),

),
            ),
        

          Expanded(
             child: _filteredJobs.isEmpty
                ? Center(child: Text("No Companies found", style: TextStyle(fontSize: 16)))
                :  ListView.builder(
              itemCount: _filteredJobs.length,
              itemBuilder: (context, index) {
                return _buildJobCard(context, _filteredJobs[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJobCard(BuildContext context, Job job) {
    return MouseRegion(
      onEnter: (_) {
            setState(() {
              _isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHovered = false;
            });
          },
      child: InkWell(
        onTap: () {
            Navigator.pushNamed(context, '/company_details', arguments: job,);
        },
        child: Container(
          color:Colors.white,
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child:Container(
        
                        
                        width: 380,
                        margin: EdgeInsets.only(top: 0),
                        decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                      boxShadow: [
                     
                      ],
                       border: Border(
         bottom: BorderSide(
            color: Colors.grey.withOpacity(0.5), 
            width: 1, 
          ),
          
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ), // Set the circular radius here
                               ),
                        child: Column(children: [
                          
                          
                          SizedBox(height:5),
                          Row(
                            children: [
                              SizedBox(width:20),
                              SizedBox(
                                  
                                  width: 40, 
                                  height: 40, 
                                  child: ClipRect( 
                                  child: Image.asset(
                                  job.imageUrl, 
                                   fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio while filling the container
                                      ),
                                     ),
                                      ),
                                    SizedBox(width:10),
                                     Container(
                                     // margin: EdgeInsets.only(left: 0),
                                       child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start, // Aligns items at the start
                                        crossAxisAlignment: CrossAxisAlignment.start, 
                                         children: [
                                            SizedBox(height:5),
                                            Text(
                                              job.company,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black, // Text color
                                              ),
                                              overflow: TextOverflow.ellipsis, // Enable ellipsis
                                              maxLines: 1, // Limit to one line
                                            ),
                                            SizedBox(height:5),
                                                   Row(
                                                     children: [
                                                      Text('2 Jobs', style: TextStyle(color:Colors.grey, fontSize:11),),
                                                      SizedBox(width:5),
                                                      Row(children: [
                                                         Icon(Icons.location_on_outlined, color:Colors.grey, size: 15),
                                                         
                                                         Text(job.location, style: TextStyle(color:Colors.grey, fontSize:11),),
                                                      ],)
                                                           ],
                                                         ),
                                         ],
                                         
                                       ),
                                     ),
                            ],
                          ),
                          
            
                          
                       SizedBox(height:15), ],),
                          
                        ),
        ),
      ),
    );
  }
}
