import 'package:flutter/foundation.dart';

import '../screens/projects/projects_page.dart';
import '../models/project.dart';
import '../utils/projects_data.dart';

/// Manages all functionalities of the [ProjectsPage]
class ProjectProvider with ChangeNotifier {
  // contains all project model
  final List<Project> _projects = [];

  ///returns a list of all Project model
  List<Project> get projects {
    return [..._projects];
  }

  /// Add a new Project
  void addProject(Map<String, Object> projectsJson) {
    final _project = Project.fromJson(projectsJson);
    _projects.add(_project);
    notifyListeners();
  }

  /// Fetch all projects
  void fetchAndSetProjects() {
    //get data
   for (var projectData in projectsData) {
      _projects.add(Project.fromJson(projectData));
    }
  }
}
