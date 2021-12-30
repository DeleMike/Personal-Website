import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'about_page.dart';
import '../../providers/dark_theme_provider.dart';

/// Home page for big sized screen
class BigHomePage extends StatelessWidget {
  const BigHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _dSize = MediaQuery.of(context).size;
    return Consumer<DarkThemeProvider>(
      builder : (_, themeProvider, __) => Container(
         color: themeProvider.darkTheme ? Colors.black : Colors.white,
        child: Row(
          children: [
            SizedBox(
              width: _dSize.width * 0.5,
              height: _dSize.height * 0.5,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(
                      'https://delemike.github.io/MK-iNVENTS/dp_pic.jpg',
                    ),
                  ),
                ),
              ),
            ),
            const AboutPage(),
          ],
        ),
      ),
    );
  }
}
