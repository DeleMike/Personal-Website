import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'contact_page.dart';

/// Displays 'The About' 
class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _dSize = MediaQuery.of(context).size;
    return SizedBox(
      width: _dSize.width * 0.5,
      height: _dSize.height,
      child: Center(
        child: Column(
          children: [
            //Dark theme controller
            // Switch.adaptive(
            //   value: true,
            //   onChanged: (val) {},
            // ),
            //Name
            Flexible(
              child: Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Akindele Michael',
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //Description
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  'Software Developer. Flutter. Deep Learning. Football. Music.',
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            const Divider(),

            //Note about myself
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              child: Text(
                "Hi, I'm Michael a student of Computer Science at the University of Ibadan. "
                "I love building mobile softwares & services and also love learning. "
                "My current interests lie in Mobile Development, Deep Learning and Algorithms and Data Structures",
                style: GoogleFonts.nunitoSans(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.start,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              child: Text(
                "\n\nI always want to use my knowledge to the best I can to solve "
                "problems that can better people lives. "
                "In my free time, I prefer hanging out with close friends or watch some football. "
                "I love travelling too",
                style: GoogleFonts.nunitoSans(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.start,
              ),
            ),

            const ContactPage()
          ],
        ),
      ),
    );
  }
}
