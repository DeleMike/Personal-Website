import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/index_page.dart';
import 'screens/home/home_page.dart';
import 'screens/projects/projects_page.dart';
import 'providers/projects_provider.dart';
import 'providers/dark_theme_provider.dart';
import '../utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final DarkThemeProvider _themeProvider = DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    _getCurrentAppTheme();
  }

  //this will get the app current theme as saved in the shared pref file
  void _getCurrentAppTheme() async {
    _themeProvider.darkTheme = await _themeProvider.themePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => _themeProvider,
        ),
        ChangeNotifierProvider(
          create: (ctx) => ProjectProvider(),
        ),
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (_, themeProvider, __) => MaterialApp(
          title: 'Akindele Michael',
          theme: Styles.themeData(themeProvider.darkTheme, context),
          home: const IndexPage(),
          routes: {
            HomePage.routeName: (ctx) => const HomePage(),
            ProjectsPage.routeName: (ctx) => const ProjectsPage()
          },
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
