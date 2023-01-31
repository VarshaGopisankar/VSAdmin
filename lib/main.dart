import 'package:vsadmin/constants.dart';
import 'package:vsadmin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VS Eye and Dental Care',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MainScreen(),
    );
  }
}