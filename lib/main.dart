import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/index_page.dart';
import 'screens/home/home_page.dart';
import 'screens/projects/projects_page.dart';
import 'providers/projects_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ProjectProvider(),
      child: MaterialApp(
        title: 'Akindele Michael',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
        ),
      
        home: const IndexPage(), 
        routes: {
          HomePage.routeName: (ctx) => const HomePage(),
          ProjectsPage.routeName: (ctx)=> const ProjectsPage()
        },
          debugShowCheckedModeBanner: false,
      ),
    );
  }
}
