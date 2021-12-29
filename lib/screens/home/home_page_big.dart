import 'package:flutter/material.dart';

import 'about_page.dart';

/// Home page for big sized screen
class BigHomePage extends StatelessWidget {
  const BigHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _dSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: _dSize.width,
      //padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          SizedBox(
            width: _dSize.width * 0.5,
            height: _dSize.height,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.network(
                'https://delemike.github.io/MK-iNVENTS/pf_pic.png',
              ), // child: Image.asset(
              //   'images/pf_pic.png',
              //   fit: BoxFit.fitHeight,
              // ),
            ),
          ),
          const AboutPage(),
        ],
      ),
    );
  }
}
