import 'package:flutter/material.dart';
import 'home/home_page.dart';

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
    const Center(
      child: Text('Projects Page'),
    ),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs.elementAt(_selectedTabIndex),
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
        selectedItemColor: Colors.black,
        onTap: _onTabSelected,
      ),
    );
  }
}
