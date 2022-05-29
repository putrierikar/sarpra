import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarpra/user/user_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SoS',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pink,
        ),
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          headline4: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 25,  
            letterSpacing: 1,
          ),
          bodyText2: GoogleFonts.poppins(
            color: Colors.grey,
            fontSize: 18,
            height: 0.10,
          ),
          button: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
            letterSpacing: 1,
          ),
          bodyText1: GoogleFonts.poppins(
            color: Colors.pink,
            fontSize: 18,
            letterSpacing: 1,
          ),
        ),
      ),   
      home: MyHomePage(),
    );
  }
}
