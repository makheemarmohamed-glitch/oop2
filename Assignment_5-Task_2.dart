class Person {
  String name;
  String address;

  Person(String name, String address) {
    this.name = name;
    this.address = address;
  }

  String toString() {
    return "$name($address)";
  }
}

class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  Student(String name, String address) : super(name, address);

  String toString() {
    return "Student: ${super.toString()}";
  }

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses = courses.length;
  }

  void printGrades() {
    for (int i = 0; i < courses.length; i++) {
      print("${courses[i]}: ${grades[i]}");
    }
  }

  double getAverageGrades() {
    if (grades.isEmpty) return 0;
    int sum = 0;
    for (int g in grades) {
      sum += g;
    }
    return sum / grades.length;
  }
}

class Teacher extends Person {
  int numCourses = 0;
  List<String> courses = [];

  Teacher(String name, String address) : super(name, address);

  String toString() {
    return "Teacher: ${super.toString()}";
  }

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }
    courses.add(course);
    numCourses = courses.length;
    return true;
  }

  bool removeCourse(String course) {
    if (!courses.contains(course)) {
      return false;
    }
    courses.remove(course);
    numCourses = courses.length;
    return true;
  }
}