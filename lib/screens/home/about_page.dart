import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'contact_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                      fontSize: 55,
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
            Flexible(
              flex: 2,
              child: Container(
                // margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Hi, I'm Michael a student of Computer Science at the University of Ibadan. "
                  "I love building mobile softwares & services and also love learning. "
                  "My current interests lie in Mobile Development, Deep Learning and Algorithms and Data Structures"
                  "\n\nI always want to use my knowledge to the best I can to solve problems that can better people lives. "
                  "In my free time, I prefer hanging out with close friends or watch some football."
                  "I love travelling too",
                  style: GoogleFonts.nunitoSans(
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

            //my_connect
            const Flexible(
              child: ContactPage(),
            ),
          ],
        ),
      ),
    );
  }
}
