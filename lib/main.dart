import 'package:examenapp/src/page/detalles.dart';
import 'package:examenapp/src/page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disney',
      initialRoute: '/home',
      routes: {
        '/home': (_)=>HomePage(),
        '/detalle': (_)=>Detalles(),
      },
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

