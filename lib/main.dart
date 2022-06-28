import 'package:flutter/material.dart';

import './widgets/splashpage.dart';
import './widgets/homepage.dart';
import './widgets/loginpage.dart';
import './widgets/ratestudentpage.dart';
import './widgets/ratedstudentsresultpage.dart';
import './widgets/ratedstudentresultpage.dart';
import './widgets/showtopstudentpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alhuda",
      theme: ThemeData(
        primarySwatch: Colors.green,
        //fontFamily: '',
      ),
      routes: <String, WidgetBuilder>{
        "/": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
       // "/showstd": (context) => ShowStudentPage(),
        "/ratestd": (context) => RateStudentPage(),
        "/showratedstd": (context) => RatedStudentResultPage(),
        "/showratedstds": (context) => RatedStudentsResultPage(),
        "/showtopstds": (context) => ShowTopStudentPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
