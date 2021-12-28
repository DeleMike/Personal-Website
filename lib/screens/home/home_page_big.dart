import 'package:flutter/material.dart';

import 'about_page.dart';

class BigHomePage extends StatelessWidget {
  const BigHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _dSize = MediaQuery.of(context).size;
    return Container(
      height: _dSize.height + _dSize.height * 0.25,
      width: _dSize.width,
      color: Colors.white,
      child: Row(
        children: [
          Flexible(
            child: Container(
              width: _dSize.width * 0.5,
              height: _dSize.height,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.asset(
                  'images/pf_pic.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
                width: _dSize.width * 0.5,
                height: _dSize.height,
                child: const AboutPage()),
          ),
        ],
      ),
    );
  }
}
