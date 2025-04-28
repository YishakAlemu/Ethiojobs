
import 'package:flutter/material.dart';
class Filterpage extends StatefulWidget {
  const Filterpage({super.key});
  

  @override
  _FilterpageState createState() => _FilterpageState();
}

class _FilterpageState extends State<Filterpage> {
  bool _cat1isChecked = false;
  bool _cat2isChecked = false;
   bool _cat3isChecked = false;
    bool _cat4isChecked = false;
     bool _cat5isChecked = false;
     bool _loc1isChecked = false;
     bool _loc2isChecked = false;
     bool _loc3isChecked = false;
     bool _loc4isChecked = false;
     bool _loc5isChecked = false;
     bool _car1isChecked = false;
  bool _car2isChecked = false;
   bool _car3isChecked = false;
    bool _car4isChecked = false;
     bool _car5isChecked = false;
     bool _emp1isChecked = false;
  bool _emp2isChecked = false;
   bool _emp3isChecked = false;
    bool _emp4isChecked = false;
     bool _emp5isChecked = false;
     
     int? _selectedCategory ;
     final TextEditingController _searchController = TextEditingController();
  final List<String> _categories = [
    'Accounting and Finance',
    'Admin secretarial and clerical',
    'Marketing and Sales',
    'IT and Software',
    'Healthcare',
    'Agricuture',
    'Architecture and Construction',

  ];
  final Map<String, bool> _categoryChecked = {
  'Accounting and Finance': false,
  'Admin secretarial and clerical': false,
  'Marketing and Sales': false,
  'IT and Software': false,
  'Healthcare': false,
  'Agriculture': false,
  'Architecture and Construction': false,
};
  List<String> _filteredCategories = [];
  @override
  void initState() {
    super.initState();
    _filteredCategories = _categories; // Initialize with all categories
  }

  void _filterCategories(String query) {
    if (query.isEmpty) {
      setState(() {
        _filteredCategories = _categories; // Show all if search is empty
      });
    } else {
      setState(() {
        _filteredCategories = _categories
            .where((category) => category.toLowerCase().contains(query.toLowerCase()))
            .toList(); // Filter based on the search query
      });
    }
  }
void _resetSelections() {
  setState(() {
    _cat1isChecked = false;
    _cat2isChecked = false;
    _cat3isChecked = false;
    _cat4isChecked = false;
    _cat5isChecked = false;
    
    _loc1isChecked = false;
    _loc2isChecked = false;
    _loc3isChecked = false;
    _loc4isChecked = false;
    _loc5isChecked = false;
    
    _car1isChecked = false;
    _car2isChecked = false;
    _car3isChecked = false;
    _car4isChecked = false;
    _car5isChecked = false;
    
    _emp1isChecked = false;
    _emp2isChecked = false;
    _emp3isChecked = false;
    _emp4isChecked = false;
    _emp5isChecked = false;
    
    _selectedCategory = null; 
     _searchController.clear();
      _filteredCategories = _categories;// Reset radio button selection
   
  });
}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
     child:Container(
      child: Column(children: [
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(onPressed: _resetSelections, 
        child: Text("RESET", style:TextStyle(color: const Color.fromARGB(255, 72, 193, 156)))),
        Text('Filters', style:TextStyle(color:Colors.black, fontWeight: FontWeight.w400, fontSize:15)),
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.cancel_outlined, color:Colors.grey,size: 24,))

      ]
      ),
        Row(
          children: [
            SizedBox(width:20),
            Text("Category", style:TextStyle(color:Colors.black, fontSize:17)),
          ],
        ),
        SizedBox(height:5),
       Row(
         children: [
          
           Row(
             children: [
              SizedBox(width:20),
               Container(
                      height: 40,
                      width: 340,
                      margin: EdgeInsets.only(top: 0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 241, 240, 240),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color.fromARGB(255, 196, 196, 196))
                      ),
                     child: Center(
                 child: TextField(
                  controller: _searchController,
                onChanged: _filterCategories,
                   decoration: InputDecoration(
                     hintText: "Search category",
                     hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                     contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                     border: InputBorder.none,
                    
                   ),
                 ),
               ),
                    ),
                    
             ],
           ),
         ],
       ),
       ..._filteredCategories.map((category) {
        return Padding(
          padding: const EdgeInsets.only(left: 10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Checkbox(
        value: category == 'Accounting and Finance' ? _cat1isChecked : _cat2isChecked,
        activeColor: const Color.fromARGB(255, 72, 193, 156),
        checkColor: Colors.white,
        onChanged: (bool? value) {
          setState(() {
            if (category == 'Accounting and Finance') {
              _cat1isChecked = value ?? false;
            } else if (category == 'Admin secretarial and clerical') {
              _cat2isChecked = value ?? false;
            }
           
          
          });
        },
      ),
      Text(category, style: TextStyle(color: Colors.black54, fontSize: 15)),
    ],
  ),
       );
}).toList(),
      //  Container(
      //   padding: EdgeInsets.only(left:10),
      //   child:Column(
      //   children: [
      //      Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Checkbox(
      //           value: _cat1isChecked,
      //            activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
      //           checkColor: Colors.white,
      //           onChanged: (bool? value) {
      //             setState(() {
      //               _cat1isChecked = value ?? false; // Update the state
      //             });
      //           },
      //         ),
      //         Text('Accounting and Finance', style:TextStyle(color:Colors.black54, fontSize: 15)),
      //       ],
      //     ),
      //   ],)),
      //   Container(
      //   padding: EdgeInsets.only(left:10),
      //   child:Column(
      //   children: [
      //      Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Checkbox(
      //           value: _cat2isChecked,
      //            activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
      //           checkColor: Colors.white,
      //           onChanged: (bool? value) {
      //             setState(() {
      //               _cat2isChecked = value ?? false; // Update the state
      //             });
      //           },
      //         ),
      //         Text('Admin secretarial and clerical', style:TextStyle(color:Colors.black54, fontSize: 15)),
      //       ],
      //     ),
      //   ],)),
      //    Container(
      //   padding: EdgeInsets.only(left:10),
      //   child:Column(
      //   children: [
      //      Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Checkbox(
      //           value: _cat3isChecked,
      //            activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
      //           checkColor: Colors.white,
      //           onChanged: (bool? value) {
      //             setState(() {
      //               _cat3isChecked = value ?? false; // Update the state
      //             });
      //           },
      //         ),
      //         Text('Agriculture', style:TextStyle(color:Colors.black54, fontSize: 15)),
      //       ],
      //     ),
      //   ],)),
      //    Container(
      //   padding: EdgeInsets.only(left:10),
      //   child:Column(
      //   children: [
      //      Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Checkbox(
      //           value: _cat4isChecked,
      //            activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
      //           checkColor: Colors.white,
      //           onChanged: (bool? value) {
      //             setState(() {
      //               _cat4isChecked = value ?? false; // Update the state
      //             });
      //           },
      //         ),
      //         Text('Architecture and Construction', style:TextStyle(color:Colors.black54, fontSize: 15)),
      //       ],
      //     ),
      //   ],)),
      //    Container(
      //   padding: EdgeInsets.only(left:10),
      //   child:Column(
      //   children: [
      //      Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Checkbox(
      //           value: _cat5isChecked,
      //            activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
      //           checkColor: Colors.white,
      //           onChanged: (bool? value) {
      //             setState(() {
      //               _cat5isChecked = value ?? false; // Update the state
      //             });
      //           },
      //         ),
      //         Text('Automotive', style:TextStyle(color:Colors.black54, fontSize: 15)),
      //       ],
      //     ),
      //   ],)),
        SizedBox(height:10),
       Divider(color: const Color.fromARGB(255, 219, 219, 219),indent: 30,endIndent: 30,),
       SizedBox(height:10),
       Row(
          children: [
            SizedBox(width:20),
            Text("Location", style:TextStyle(color:Colors.black, fontSize:17)),
          ],
        ),
        SizedBox(height:5),
       Row(
         children: [
          
           Row(
             children: [
              SizedBox(width:20),
               Container(
                      height: 40,
                      width: 340,
                      margin: EdgeInsets.only(top: 0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 241, 240, 240),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: const Color.fromARGB(255, 196, 196, 196))
                      ),
                     child: Center(
                 child: TextField(
                   decoration: InputDecoration(
                     hintText: "Search Location",
                     hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                     contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                     border: InputBorder.none,
                    
                   ),
                 ),
               ),
                    ),
             ],
           ),
         ],
       ),
       Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _loc1isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _loc1isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Addis Ababa', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
        Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _loc2isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _loc2isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Afar', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _loc3isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _loc3isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Amhara', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _loc4isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _loc4isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Benishangul Gumuz', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _loc5isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _loc5isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Central Ethiopia Regional state', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         SizedBox(height:10),
       Divider(color: const Color.fromARGB(255, 219, 219, 219),indent: 30,endIndent: 30,),
       SizedBox(height:10),
       Row(
          children: [
            SizedBox(width:20),
            Text("Career", style:TextStyle(color:Colors.black, fontSize:17)),
          ],
        ),
        SizedBox(height:5),
       
          
           
       Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _car1isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _car1isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Senior Level(C level)', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
        Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _car2isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _car2isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Executive(VP, Director)', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _car3isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _car3isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Senior(5-8 years)', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _car4isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _car4isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Mid Level(3-5 years)', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _car5isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _car5isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Junior Level(1-3 years)', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         SizedBox(height:10),
       Divider(color: const Color.fromARGB(255, 219, 219, 219),indent: 30,endIndent: 30,),
       SizedBox(height:10),
       Row(
          children: [
            SizedBox(width:20),
            Text("Employment type", style:TextStyle(color:Colors.black, fontSize:17)),
          ],
        ),
        SizedBox(height:5),
       
       Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _emp1isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _emp1isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Consultancy', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
        Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _emp2isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _emp2isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Internship', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _emp3isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _emp3isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Freelance', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _emp4isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _emp4isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Contract', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         Container(
        padding: EdgeInsets.only(left:10),
        child:Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _emp5isChecked,
                 activeColor: const Color.fromARGB(255, 72, 193, 156), // Color of the checkbox when checked
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    _emp5isChecked = value ?? false; // Update the state
                  });
                },
              ),
              Text('Part time', style:TextStyle(color:Colors.black54, fontSize: 15)),
            ],
          ),
        ],)),
         SizedBox(height:10),
       Divider(color: const Color.fromARGB(255, 219, 219, 219),indent: 30,endIndent: 30,),
       SizedBox(height:10),
       Row(
          children: [
            SizedBox(width:20),
            Text("Posted within", style:TextStyle(color:Colors.black, fontSize:17)),
          ],
        ),
        SizedBox(height:5),
       
     Container(
  padding: EdgeInsets.only(left: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Radio<int>(
        value: 1, // Unique value for this radio button
        groupValue: _selectedCategory, // Track the selected category
        activeColor: const Color.fromARGB(255, 72, 193, 156),
        onChanged: (int? value) {
          setState(() {
            _selectedCategory = value; // Update the selected category
          });
        },
      ),
      Text('Any date', style: TextStyle(color: Colors.black54, fontSize: 15)),
    ],
  ),
),
       Container(
  padding: EdgeInsets.only(left: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Radio<int>(
        value: 2, // Unique value for this radio button
        groupValue: _selectedCategory, // Track the selected category
        activeColor: const Color.fromARGB(255, 72, 193, 156),
        onChanged: (int? value) {
          setState(() {
            _selectedCategory = value; // Update the selected category
          });
        },
      ),
      Text('Since Yesterday', style: TextStyle(color: Colors.black54, fontSize: 15)),
    ],
  ),
),
Container(
  padding: EdgeInsets.only(left: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Radio<int>(
        value: 3, // Unique value for this radio button
        groupValue: _selectedCategory, // Track the selected category
        activeColor: const Color.fromARGB(255, 72, 193, 156),
        onChanged: (int? value) {
          setState(() {
            _selectedCategory = value; // Update the selected category
          });
        },
      ),
      Text('Last 7 days', style: TextStyle(color: Colors.black54, fontSize: 15)),
    ],
  ),
),
Container(
  padding: EdgeInsets.only(left: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Radio<int>(
        value: 4, // Unique value for this radio button
        groupValue: _selectedCategory, // Track the selected category
        activeColor: const Color.fromARGB(255, 72, 193, 156),
        onChanged: (int? value) {
          setState(() {
            _selectedCategory = value; // Update the selected category
          });
        },
      ),
      Text('Last 30 days', style: TextStyle(color: Colors.black54, fontSize: 15)),
    ],
  ),
),

      ],),
     )
      ),
      bottomNavigationBar: BottomAppBar(
         color: Colors.white,
         
         height:60,
        child:Container(
          height:55,
          width:290,
          child: Row(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              },
               style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 72, 193, 156),
                                   shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6), 
                                  
                  ),),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cancel_outlined, color:Colors.white),
                      SizedBox(width:5),
                      Text('CANCEL', style: TextStyle(color:Colors.white, fontSize: 17),)
                    ],
                  )),
              ElevatedButton(onPressed: (){},
               style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 72, 193, 156),
                                   shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6), 
                                  
                  ),),
              child:Text('UPDATE', style: TextStyle(color:Colors.white, fontSize: 17),)),
            ],
          )
        )
      ),
    );
    
  }
}