

import 'package:dasshboard/screens/docc.dart';

import 'package:dasshboard/screens/transfer.dart';
import 'package:flutter/material.dart';

class dashb extends StatefulWidget {
  const dashb({super.key});

  @override
  State<dashb> createState() => _dashbState();
}

class _dashbState extends State<dashb> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Patients",style: TextStyle(color: Colors.black),),),
      body: Row(
        children: [
          // to make list navbar
          NavigationRail(

              // leading to make icon navigation

              extended: isExpanded,
              backgroundColor: Colors.blue,
              unselectedIconTheme:
                  IconThemeData(color: Colors.white, opacity: 1),
              unselectedLabelTextStyle: TextStyle(
                color: Colors.white,
              ),
              selectedIconTheme: IconThemeData(color: Colors.deepPurple),
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text(
                    "home",
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.medical_information_outlined),
                  label: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => doccc()));
                    },
                    child: Text('Add doctor',style: TextStyle(color: Colors.black),),
                  ),
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
              padding: EdgeInsets.all(60.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // lets add the navigation menu
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                // lets trigger navigation
                                setState(() {
                                  isExpanded =  !isExpanded;
                                });
                              },
                              icon: Icon(Icons.menu),
                            ),
                          ],
                        ),
                        //lets add navigation menu
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                    // this for boxes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                            child: Card(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.report_outlined,
                                    size: 26,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    " All Patients",
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    // lets add table
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DataTable(
                            headingRowColor: MaterialStateColor.resolveWith(
                                (states) => Color.fromARGB(255, 171, 183, 224)),
                            columns: [
                              DataColumn(label: Text("name")),
                              DataColumn(label: Text("NID")),
                              DataColumn(label: Text("diagonsis")),
                              DataColumn(label: Text("Gender")),
                              DataColumn(label: Text("City")),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(TextButton(onPressed: () {
                                   Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => transfer()));
                    },
                    child: Text('Mohamed ahmed '),
                                  
                                )),
                                DataCell(Text(
                                "301026002203"

                                )),
                                DataCell(Text("Heart")),
                                DataCell(Text("Male")),
                                DataCell(Text("Cairo")),
                              ]),

                              DataRow(cells: [
                                DataCell(TextButton(onPressed: () {
                                   Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => transfer()));
                    },
                    child: Text('Mohamed moahmoud'),
                                )),
                                DataCell(Text("301050630523")),
                                DataCell(Text("bones")),
                                DataCell(Text("Male")),
                                DataCell(Text("Alex")),
                              ]),
                              DataRow(cells: [
                                DataCell(TextButton(onPressed: () {
                                   Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => transfer()));
                    },
                    child: Text('ali osama'),
                                )),
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
              ),
            ),
          ),
          // MaterialButton(
          //   color: Colors.blue,
          //   onPressed: () {
          //     Navigator.of(context)
          //         .push(MaterialPageRoute(builder: (context) => doccc()));
          //   },
          //   child: Text('Doctors page'),
          // ),
        ],
      ),
    );
  }
}
