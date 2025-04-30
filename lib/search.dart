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
  TextEditingController _searchController = TextEditingController();
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
              job.title.toLowerCase().contains(query.toLowerCase()) ||
              job.location.toLowerCase().contains(query.toLowerCase()) ||
              job.type.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    return Container(
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
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 6),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 0),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(0, 0),
                    ),
                    child: Text(
                      'New',
                      style: TextStyle(color: Colors.indigo, fontSize: 13),
                    ),
                  ),
                ),
                SizedBox(width: 11),
                Padding(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(0, 0),
                    ),
                    child: Text(
                      'Premium',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 11),
                SizedBox(width: 185),
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
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 20),
                SizedBox(
                  width: 90,
                  height: 55,
                  child: ClipRect(
                    child: Image.asset(
                      job.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      child: TextButton(
                        onPressed: () {
                          // Action to navigate to job details or apply
                        },
                        child: Text(
                          job.title,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 120,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              backgroundColor: const Color.fromARGB(200, 255, 255, 255),
                            ),
                            child: Text(
                              job.type,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.5,
                                fontWeight: FontWeight.w400,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        SizedBox(
                          width: 120,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              backgroundColor: const Color.fromARGB(200, 255, 255, 255),
                            ),
                            child: Text(
                              'Computer Science & IT',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.5,
                                fontWeight: FontWeight.w400,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 20),
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
                      size: 14,
                      color: Colors.black,
                    ),
                    label: Text(
                      job.location,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size(0, 0),
                    ),
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      size: 14,
                      color: Colors.black,
                    ),
                    label: Text(
                      'April 10th, 2025',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 25,
              width: 338,
              margin: EdgeInsets.symmetric(horizontal: 22.0),
              padding: EdgeInsets.all(3),
              color: Colors.white,
              child: Row(
                children: [
                  Text(
                    '15 days ago by ',
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0),
                        minimumSize: Size(0, 0),
                      ),
                      child: Text(
                        job.company,
                        style: TextStyle(fontSize: 13, color: Colors.blueAccent),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 260),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 72, 193, 156),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/apply');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Text(
                      'Apply Now',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 72, 193, 156),
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
