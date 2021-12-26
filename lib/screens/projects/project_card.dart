import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({ Key? key }) : super(key: key);

   @override
  Widget build(BuildContext context) {
    final _dSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        elevation: 7.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                width: _dSize.width,
                height: (_dSize.height * 0.33),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/projects/covid_jpg.jpg'),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Chatting App',
                    style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Divider(),
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'This project shows how to implement a Stack Data Structure.'
                  '\nIt also shows how to implement a LinkedList and uses a simple sorting algorithm(Bubble Sort) to sort data'
                  '\n\nBuilt and powered with C++',
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const Divider(),
            Flexible(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: OutlinedButton.icon(
                    onPressed: () =>
                        html.window.open(Constants.profileGithub, 'DeleMike'),
                    icon: const SizedBox(
                      height: 20,
                      width: 20,
                      child: Icon(Icons.open_in_browser),
                    ),
                    label: Text(
                      'Check at Github',
                      style: GoogleFonts.nunitoSans(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
