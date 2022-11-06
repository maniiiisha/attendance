
class Student {
  String name;
  List<String> lectures;
  String course;
  String section;
  String semester;
  int roll;

  Student(
      {required this.course,
      required this.section,
      required this.semester,
      this.lectures = const [],
      required this.name,
      
      required this.roll});
}
