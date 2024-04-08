// Define the Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  // Constructor for Student class
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student information
  void printStudentInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Define the Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor for Teacher class
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher information
  void printTeacherInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Define a third class to create student and teacher objects and call their methods
class School {
  void run() {
    // Create a student object
    Student student = Student('Alice', 15, '10th');

    // Create a teacher object
    Teacher teacher = Teacher('Mr. Smith', 35, 'Math');

    // Print student information
    student.printStudentInfo();

    // Print teacher information
    teacher.printTeacherInfo();
  }
}

void main() {
  // Create an instance of the School class
  School school = School();

  // Call the run method to demonstrate the functionality
  school.run();
}
