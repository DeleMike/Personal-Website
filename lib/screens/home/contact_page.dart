// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../utils/constants.dart';
import '../../providers/dark_theme_provider.dart';

/// Displays button to connect to personal social media accounts
class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _brightness = MediaQuery.of(context).platformBrightness;
    bool _isDarkMode = _brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Center(
        child: Wrap(
          //alignment: WrapAlignment.center,
          children: [
            const _ConnectButton(
              url: Constants.profileGithub,
              name: 'DeleMike',
              assetUrl: 'https://delemike.github.io/MK-iNVENTS/github.png',
              textDesc: 'Connect to Github',
            ),
            const _ConnectButton(
              url: Constants.profileLinkedIn,
              name: 'Akindele Michael',
              assetUrl: 'https://delemike.github.io/MK-iNVENTS/linkedin.png',
              textDesc: 'Connect to LinkedIn',
            ),
            const _ConnectButton(
              url: Constants.profileTwitter,
              name: 'Delé',
              assetUrl: 'https://delemike.github.io/MK-iNVENTS/twitter.png',
              textDesc: 'Connect to Twitter',
            ),
            _ConnectButton(
              url: Constants.profileMedium,
              name: 'Akindele Michael',
              assetUrl: _isDarkMode
                  ? 'https://delemike.github.io/MK-iNVENTS/medium.png'
                  : 'https://delemike.github.io/MK-iNVENTS/medium_light.png',
              textDesc: 'Connect to Medium',
            ),
            const _ConnectButton(
              url: Constants.profileInstagram,
              name: 'Akindele Michael',
              assetUrl: 'https://delemike.github.io/MK-iNVENTS/instagram.png',
              textDesc: 'Connect to Instagram',
            ),
            const _ConnectButton(
              url: Constants.gmail,
              name: 'My Mail',
              assetUrl: 'https://delemike.github.io/MK-iNVENTS/gmail.png',
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
    return Consumer<DarkThemeProvider>(
      builder: (_, themeProvider, __) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextButton.icon(
          onPressed: () => html.window.open(url!, name!),
          icon: SizedBox(
            height: 20,
            width: 20,
            child: Image.network(assetUrl!),
          ),
          label: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textDesc!,
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: themeProvider.darkTheme ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
