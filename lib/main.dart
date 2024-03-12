
// import 'package:dasshboard/screens/login.dart';

import 'package:dasshboard/screens/transfer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(admin());
}
class admin extends StatelessWidget {
   admin({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
//  home: LoginPage(),
home : transfer(),


    );
  }
}