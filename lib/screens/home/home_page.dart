import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _dSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Flexible(
          child: Container(
            height: _dSize.height,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: Image.asset(
              'images/pf_pic.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Flexible(
          child: SizedBox(
            width: _dSize.width * 0.5,
            height: _dSize.height,
            child: const FlutterLogo(
              size: 150,
            ),
          ),
        ),
      ],
    );
  }
}
