import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../home/home_page_big.dart';
import '../home/home_page_small.dart';
import '../../providers/dark_theme_provider.dart';

/// Shows Profile Picture and the about page
class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _boolString = 'Dark';
 // bool _boolVal = false;
  @override
  void initState() {
    super.initState();
    setState(() {
     // _boolVal = DarkThemeProvider().darkTheme;
      DarkThemeProvider().darkTheme
          ? _boolString = 'Light'
          : _boolString = 'Dark';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkThemeProvider>(
      builder: (_, themeProvider, __) => Scaffold(
        appBar: AppBar(
          backgroundColor:
              themeProvider.darkTheme ? Colors.black : Colors.white,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, right: 8.0),
              child: Text(
                'Change to $_boolString theme',
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color:
                        themeProvider.darkTheme ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
            Switch.adaptive(
              value: themeProvider.darkTheme,
              onChanged: (changedVal) {
                setState(() {
                  themeProvider.darkTheme = changedVal;
                  themeProvider.darkTheme ? _boolString = 'Light' : _boolString = 'Dark';
                });
              },
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {},
          child: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (ctx, constraints) {
                if (constraints.maxWidth < 1100) {
                  return const SmallHomePage();
                } else {
                  return const BigHomePage();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
