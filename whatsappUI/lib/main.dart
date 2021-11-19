
import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/Screens/Homescreensart.dart';
import 'package:flutter_launcher_icons/android.dart';

void main(){
runApp(MyApp());
}
class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: Color(0xFF075E54),
      accentColor: Color(0xFF128C7E)),
    home: HomeScreen(),
    );
  }
}





