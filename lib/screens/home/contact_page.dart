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
      child: Center(
        child: Wrap(
          //alignment: WrapAlignment.center,
          children: const [
            _ConnectButton(
              url: Constants.profileGithub,
              name: 'DeleMike',
              assetUrl: 'images/github.png',
              textDesc: 'Connect to Github',
            ),
            _ConnectButton(
              url: Constants.profileLinkedIn,
              name: 'Akindele Michael',
              assetUrl: 'images/linkedin.png',
              textDesc: 'Connect to LinkedIn',
            ),
            _ConnectButton(
              url: Constants.profileTwitter,
              name: 'Delé',
              assetUrl: 'images/twitter.png',
              textDesc: 'Connect to Twitter',
            ),
            _ConnectButton(
              url: Constants.profileMedium,
              name: 'Akindele Michael',
              assetUrl: 'images/medium_light.png',
              textDesc: 'Connect to Medium',
            ),
            _ConnectButton(
              url: Constants.profileInstagram,
              name: 'Akindele Michael',
              assetUrl: 'images/instagram.png',
              textDesc: 'Connect to Instagram',
            ),
            _ConnectButton(
              url: Constants.gmail,
              name: 'My Mail',
              assetUrl: 'images/gmail.png',
              textDesc: 'Connect to Mail',
            ),
          ],
        ),
      ),
    );
  }
}

class _ConnectButton extends StatelessWidget {
  final String? url;
  final String? name;
  final String? assetUrl;
  final String? textDesc;

  const _ConnectButton(
      {this.url, this.name, this.assetUrl, this.textDesc, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextButton.icon(
        onPressed: () => html.window.open(url!, name!),
        icon: SizedBox(
          height: 20,
          width: 20,
          child: Image.asset(assetUrl!),
        ),
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            textDesc!,
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
    );
  }
}
