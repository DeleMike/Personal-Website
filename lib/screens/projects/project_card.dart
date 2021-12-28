// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// This displays a single project card
class ProjectCard extends StatelessWidget {
  /// Project ID
  final int projectId;

  /// Project Name
  final String projectName;

  /// Project Description
  final String projectDesc;

  /// Project Github Link
  final String projectGtLink;

  /// Project image cover
  /// This cover image might be null
  final String? projectImgCover;

  /// This displays a single project card
  const ProjectCard(
      {Key? key,
      required this.projectId,
      required this.projectName,
      required this.projectDesc,
      required this.projectGtLink,
      required this.projectImgCover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _dSize = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
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
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('$projectImgCover'),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    projectDesc,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        projectName,
                        style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton.icon(
                        onPressed: () =>
                            html.window.open(projectGtLink, 'DeleMike'),
                        icon: const SizedBox(
                          height: 20,
                          width: 20,
                          child: Icon(Icons.open_in_browser),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Check it out on Github',
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
            ],
          ),
        ),
      ),
    );
  }
}
