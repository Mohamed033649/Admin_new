import 'package:dasshboard/screens/dashboard.dart';
import 'package:dasshboard/screens/transfer.dart';


import 'package:flutter/material.dart';

class doccc extends StatefulWidget {
  const doccc({super.key});

  @override
  State<doccc> createState() => _docccState();
}

class _docccState extends State<doccc> {
  var selectSpecilization;
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // this is to add navbar
          NavigationRail(
              extended: isExpanded,
              backgroundColor: Colors.blue,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: TextButton(onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => dashb()));
                  },
                  child: Text("Home",style: TextStyle(color: Colors.black),),
                  
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person),
                  label: Text("Patients"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: TextButton(onPressed: () {
                     Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => transfer()));
                  },
                  child: Text("Transfers",style: TextStyle(color: Colors.black),),),
                ),
              ],
              selectedIndex: 0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      IconButton(
                          onPressed: () {
                            // trigger for navigation exbantion
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          icon: Icon(Icons.menu),
                        ),




                    TextField(
                      decoration: InputDecoration(
                          hintText: "Doctor name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),

                    TextField(
                      decoration: InputDecoration(
                          hintText: "NID",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),

                    TextField(
                      decoration: InputDecoration(
                          hintText: "Phone Number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),

                    TextField(
                      decoration: InputDecoration(
                          hintText: "city",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),

                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        hint: Text("choose Gender"),
                        items: [
                          "Male",
                          "Female",
                          
                        ]
                            .map((e) => DropdownMenuItem(
                                  child: Text("$e"),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            selectSpecilization = val!;
                          });
                        },
                        value: selectSpecilization,
                      ),
                    ),

                     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        hint: Text("choose specilization"),
                        items: [
                          "heart",
                          "bones",
                          "surgery",
                          "noise",
                        ]
                            .map((e) => DropdownMenuItem(
                                  child: Text("$e"),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            selectSpecilization = val!;
                          });
                        },
                        value: selectSpecilization,
                      ),
                    ),
                    ElevatedButton(
                      
                      
                      onPressed: (){}, child: Text("Add",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    
                    ),

                   
                   
                  ],
                ),
              ),
            ),
          ),

          SizedBox(
            height: 40.0,
          ),

          // this is to add table
          Column(
            children: [
              DataTable(
                  headingRowColor: MaterialStateColor.resolveWith(
                      (states) => Color.fromARGB(255, 171, 183, 224)),
                  columns: [
                    DataColumn(label: Text("name")),
                    DataColumn(label: Text("NID")),
                    DataColumn(label: Text("specilization")),
                    DataColumn(label: Text("Gender")),
                    DataColumn(label: Text("City")),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text("Mohamed ahmed ")),
                      DataCell(Text("301050630523")),
                      DataCell(Text("Heart")),
                      DataCell(Text("Male")),
                      DataCell(Text("Cairo")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Mohamed Mohamoud ")),
                      DataCell(Text("301050630523")),
                      DataCell(Text("bones")),
                      DataCell(Text("Male")),
                      DataCell(Text("Alex")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("omar mohamed ")),
                      DataCell(Text("301050630523")),
                      DataCell(Text("eyes")),
                      DataCell(Text("Male")),
                      DataCell(Text("alex")),
                    ]),
                  ]),
            ],
          ),
      
         
        ],
      ),
    );
  }
}
