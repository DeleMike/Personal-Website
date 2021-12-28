import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'contact_page.dart';

class SmallHomePage extends StatelessWidget {
  const SmallHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _dSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 150,
              height: 150,
              child: FittedBox(
                fit: BoxFit.cover,
                child: CircleAvatar(
                    backgroundImage: AssetImage('images/pf_pic.png')
                    // Image.asset('images/projects/chat.jpg'),
                    // fit: BoxFit.fill,
                    ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Akindele Michael',
                style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
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
            const Divider(),
            Container(
              // margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Hi, I'm Michael a student of Computer Science at the University of Ibadan. "
                "I love building mobile softwares & services and also love learning. "
                "My current interests lie in Mobile Development, Deep Learning and Algorithms and Data Structures"
                "\n\nI always want to use my knowledge to the best I can to solve problems that can better people lives. "
                "In my free time, I prefer hanging out with close friends or watch some football. "
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
            const Divider(),
            ContactPage(),
          ],
        ),
      ),
    );
  }
}
