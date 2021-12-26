///Models how a project looks like
class Project {
  /// Project ID
  final int projectID;

  /// Project title
  final String projectName;

  /// Project Description
  final String projectDesc;

  /// Project Github Link
  final String projectGtLink;

  /// Project image cover
  /// This cover image might be null
  final String? projectImgCover;

  /// Models how a project looks like
  Project(
      {required this.projectID,
      required this.projectName,
      required this.projectDesc,
      required this.projectGtLink,
      required this.projectImgCover});

  ///returns a project Model
  factory Project.fromJson(Map<String, Object> json) {
    final _projectID = json['projectID'] as int;
    final _projectName = json['projectName'] as String;
    final _projectDesc = json['projectDesc'] as String;
    final _projectGtLink = json['projectGtLink'] as String;
    final _projectImgCover = json['projectImgCover'] as String?;

    return Project(
      projectID: _projectID,
      projectName: _projectName,
      projectDesc: _projectDesc,
      projectGtLink: _projectGtLink,
      projectImgCover: _projectImgCover,
    );
  }

  Map<String, String?> toJson() => {
        'projectID': projectID.toString(),
        'projectName': projectName,
        'projectDesc': projectDesc,
        'projectGtLink': projectGtLink,
        'projectImgCover': projectImgCover,
      };

  @override
  String toString() {
    return "Project ID: $projectID \n"
        "Project Name: $projectName \n"
        "Project Description: $projectDesc \n"
        "Project Github link: $projectGtLink";
  }
}
