import 'package:flutter/material.dart';
import 'home.dart'; // Import your Homepage widget if needed

class Searchpage extends StatefulWidget {
  final List<Job> allJobs;
 final String x = 'No jobs';
  const Searchpage({super.key, required this.allJobs});

  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  bool _isHovered = false;

  final TextEditingController _searchController = TextEditingController();
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
              job.title.toLowerCase().startsWith(query.toLowerCase())
              // job.location.toLowerCase().contains(query.toLowerCase()) ||
              // job.type.toLowerCase().contains(query.toLowerCase())
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
          'Search Jobs',
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
    controller: _searchController,
    decoration: InputDecoration(
      hintText: "Search for Jobs",
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
                ? Center(child: Text("No Jobs found", style: TextStyle(fontSize: 16)))
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
            Navigator.pushNamed(context, '/apply');
            },
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            width: 380,
            margin: EdgeInsets.only(top: 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              boxShadow: [],
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1,
                ),
                left: BorderSide(color: Colors.transparent),
                right: BorderSide(color: Colors.transparent),
                top: BorderSide(color: Colors.transparent),
              ),
            ),
            child: Column(
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 6),
                    SizedBox(
                      width: 50,
                      height: 20,
                      child: ClipRect(
                        child: Image.asset(
                          job.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width:5),
                    Text(job.company,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )),
                   
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(0, 0),
                      ),
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.black54,
                        size: 24.5,
                      ),
                    ),
                    SizedBox(width:5),
                  ],
                ),
               Row(
                 children: [
                  SizedBox(width: 10),
                   Text(job.title,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )),
                 ],
               ),
                
              
               
                Row(
                  children: [
                   SizedBox(width: 8),
                    Padding(
                      padding: const EdgeInsets.only(right: 0.0),
                      child: TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(0, 0),
                        ),
                        icon: Icon(
                          Icons.location_on_outlined,
                          size: 12,
                          color: Colors.black,
                        ),
                        label: Text(
                          job.location,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(job.time, style:TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                    SizedBox(width:20),
                  ],
                ),
               SizedBox(height:3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
