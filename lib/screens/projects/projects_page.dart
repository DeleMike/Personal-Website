import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../projects/project_card.dart';
import '../../models/project.dart';
import '../../providers/projects_provider.dart';

/// Displays all available projects
class ProjectsPage extends StatefulWidget {
  static const routeName = '/projects';
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  List<Project> _projectList = [];

  @override
  void initState() {
    super.initState();
      //fetch all projects data
    final _projectProvider =
        Provider.of<ProjectProvider>(context, listen: false);
    _projectProvider.fetchAndSetProjects();
    _projectList = _projectProvider.projects;
      
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //itemBuilder: (ctx, index) => const FlutterLogo(size: 100,),
      itemBuilder: (ctx, index) => ProjectCard(
        projectId: _projectList[index].projectID,
        projectName: _projectList[index].projectName,
        projectDesc: _projectList[index].projectDesc,
        projectGtLink: _projectList[index].projectGtLink,
        projectImgCover: _projectList[index].projectImgCover,
      ),
      itemCount: _projectList.length,
    );
  }
}
