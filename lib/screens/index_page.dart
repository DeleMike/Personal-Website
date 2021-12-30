import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home_page.dart';
import 'projects/projects_page.dart';
import '../providers/dark_theme_provider.dart';

/// Root Page of the web application
class IndexPage extends StatefulWidget {
  static const routeName = '/';
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  //selected tab
  int _selectedTabIndex = 0;

  //list of tabs
  final List<Widget> _tabs = [
    const HomePage(),
    const ProjectsPage(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Consumer<DarkThemeProvider>(
      builder: (_, themeProvider, __) => Scaffold(
        body: _tabs.elementAt(_selectedTabIndex),
        backgroundColor: themeProvider.darkTheme ? Colors.black : Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mobile_screen_share),
              label: 'Projects',
            ),
          ],
          elevation: 14.0,
          currentIndex: _selectedTabIndex,
          onTap: _onTabSelected,
        ),
      ),
    );
  }
}
