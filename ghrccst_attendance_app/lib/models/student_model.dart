class Student {
  String name;
  String course;
  String section;
  int semester;
  List subjects = [];
  String email;
  int roll;
  bool teacher = false;
  Student(
      {required this.course,
      required this.section,
      required this.semester,
      required this.subjects,
      this.email = 'null',
      required this.name,
      this.teacher = false,
      required this.roll});
}
