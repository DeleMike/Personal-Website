import 'package:flutter/material.dart';

import 'screens/index_page.dart';
import 'screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akindele Michael',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
      ),
    
      home: const IndexPage(), 
      routes: {
        HomePage.routeName: (ctx) => const HomePage(),
      },
        debugShowCheckedModeBanner: false,
    );
  }
}
