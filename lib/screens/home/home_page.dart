import 'package:flutter/material.dart';

import '../home/home_page_big.dart';
import '../home/home_page_small.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (ctx, constraints) {
          if (constraints.maxWidth < 1100) {
            return const SmallHomePage();
          } else {
            return const BigHomePage();
          }
        },
      ),
    );
  }
}
