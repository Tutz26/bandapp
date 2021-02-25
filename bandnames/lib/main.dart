import 'package:bandnames/pages/home.dart';
import 'package:bandnames/pages/status.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => HomePage(),
        'status': ( _ ) => StatusPage(),
      },
    );
  }
}


