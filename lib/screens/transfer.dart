import 'package:dasshboard/screens/dashboard.dart';
import 'package:dasshboard/screens/docc.dart';
import 'package:flutter/material.dart';

class transfer extends StatefulWidget {
  const transfer({super.key});

  @override
  State<transfer> createState() => _transferState();
}

class _transferState extends State<transfer> {
  var selectSpecilization;
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Doctors",)),
      body: Row(
        
        children: [
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
                  label: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => dashb()));
                    },
                    child: Text("Home",style: TextStyle(color: Colors.black)),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.medical_information_outlined),
                  label: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => doccc()));
                    },
                    child: Text('Doctors page',style: TextStyle(color: Colors.black),),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text("settings"),
                ),
              ],
              selectedIndex: 0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        
                        
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




                    
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        Column(
                          children: [
                            Flexible(child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Row(children: [
                                Icon(Icons.medical_information,size: 26,color: Colors.blue,),
                            
                                SizedBox(width: 15.0,),
                                
                                Text("patient",style: TextStyle(
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold,
                                ),)
                              ],
                              
                              ),
                              SizedBox(height: 20.0,),
                              Column(children: [
                                                Text("     Name : Mohamed ahmed   ",style: TextStyle(
                                                  fontSize: 20.0,fontWeight: FontWeight.bold,
                                                ),),
                                                Text("     diagonsis : Heart   "),
                                                Text("   Gender   :  Male   "),
                                                Text("   city   :  Cairo   "),
                              ],)
                                             
                              
                              ],
                              
                              ),
                            ),
                                                  ),
                                                  ),
                          ],
                        ),

                      Flexible(child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Row(children: [
                            Icon(Icons.medical_information,size: 26,color: Colors.blue,),
                        
                            SizedBox(width: 15.0,),
                            
                            Text("patient",style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                          
                          ),
                          SizedBox(height: 20.0,),
                          Column(children: [
                            Text("     Name : Mohamed Mohamoud   ",style: TextStyle(
                      fontSize: 20.0,fontWeight: FontWeight.bold,
                    ),),
                   Text("     diagonsis : Heart   "),
                    Text("   Gender   :  Male   "),
                    Text("   city   :  Cairo   "),
                          ],),
                  
                          
                          ],
                          
                          ),
                        ),
                      ),
                      ),




                      Flexible(child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Row(children: [
                            Icon(Icons.medical_information,size: 26,color:Colors.blue,),
                        
                            SizedBox(width: 15.0,),
                            
                            Text("patient",style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                          
                          ),
                          SizedBox(height: 20.0,),
                          Column(children: [
                             Text("     Name : Ali osama   ",style: TextStyle(
                      fontSize: 20.0,fontWeight: FontWeight.bold,
                    ),),
                 Text("     diagonsis : Heart   "),
                    Text("   Gender   :  Male   "),
                    Text("   city   :  Cairo   "),
                          ],)
                   
                          
                          ],
                          
                          ),
                        ),
                      ),
                      ),




                      





                      ],
                    ),
                    
                    
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
