// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton.icon(
              onPressed: () =>
                  html.window.open(Constants.profileGithub, 'DeleMike'),
              icon: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('images/github.png'),
              ),
              label: Text(
                'Connect to Github',
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton.icon(
              onPressed: () => html.window
                  .open(Constants.profileLinkedIn, 'Akindele Michael'),
              icon: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('images/linkedin.png'),
              ),
              label: Text('Connect to LinkedIn',
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton.icon(
              onPressed: () =>
                  html.window.open(Constants.profileTwitter, 'Delé'),
              icon: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('images/twitter.png'),
              ),
              label: Text('Connect to Twitter',
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton.icon(
              onPressed: () =>
                  html.window.open(Constants.profileMedium, 'Akindele Michael'),
              icon: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('images/medium_light.png'),
              ),
              label: Text('Connect to Medium',
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton.icon(
              onPressed: () =>
                  html.window.open(Constants.profileInstagram, 'Akindele Michael'),
              icon: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('images/instagram.png'),
              ),
              label: Text('Connect to Instagram',
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton.icon(
              onPressed: () =>
                  html.window.open(Constants.gmail, 'My Mail'),
              icon: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('images/gmail.png'),
              ),
              label: Text(
                'Go to Gmail',
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
        ],
      ),
    );
  }
}
