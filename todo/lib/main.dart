import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      //APPLT GOOGLE  TEXT TO THE WHOLE APPP- 
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        )
      ),

home: Scaffold(

  body: Container(

    child : Center(

      child: Image(
        image: AssetImage(
          'assets/images/add_icon.png'
        ),
      )
      
      
      ),
    ),

)
);
}
}
