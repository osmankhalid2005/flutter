/* 
Question A19:
Create a class Person with attributes: id, name, age.
Derive two classes from person, named Student and Teacher.
The extra attributes of Student are cgpa, currently enrolled semester (e.g., FA22 or SP22, etc), admission date.
The extra attributes of Teacher are salary, designation (Lecturer, Assistant Professor, Professor, etc), department, and joining date.
Populate a list of at least 3 records in each class using class objects.
 A user should be able to search a student or teacher with the provided ID. You should store objects of Teacher and Student in a list.
Print list of students whose cgpa is greater than 3.7.
*/

class Person {
  String? id;
  String? name;
  int? age;

  Person(this.id, this.name, this.age);  
}

class Student extends Person {
  double? cgpa;
  String? semester;
  String? admissionDate;

  Student(super.id, super.name, super.age, this.cgpa, this.semester, this.admissionDate);
}

class Teacher extends Person {
  double? salary;
  String? designation;
  String? department;
  String? joiningDate;

  Teacher(super.id, super.name, super.age, this.salary, this.designation, this.department, this.joiningDate);
}


void main() {
   
   List<Student> students = [
    Student('123', 'John Doe', 21, 3.1, 'Fa23', '2022-09-01'),
    Student('456', 'Shahid Gul', 12, 2.8, 'Fa22', '2023-09-01'),
    Student('432', 'Muneeza Malik', 21, 3.9, 'Sp22', '2023-10-01'),
    Student('789', 'Javed Henry', 30, 2.9, 'Sp23', '2025-09-01'),
    Student('728', 'Neelam Khan', 30, 3.7, 'Sp23', '2025-09-01'),
   ];


    List<Teacher> teachers = [
    Teacher('444', 'Noman Ali', 21, 31000, 'AP', 'CS', '2022-09-01'),
    Teacher('666', 'Ali Shahid', 12, 28000, 'Lecturer', 'EE', '2023-09-01'),
    Teacher('777', 'Qasim Khan', 30, 29000, 'AssocProf', 'MS', '2025-09-01'),
   ];

   
   String studentId='456';

   for(Student s in students) {
    if(s.id == studentId) {
      print("Student found");
      break;
    }
   }

String teacherId='777';

   for(Teacher t in teachers) {
    if(t.id == teacherId) {
      print("Teacher found");
      break;
    }
   }


students.where((student) => student.cgpa! >= 3.7).forEach((student)=>print("${student.id} ${student.name}"));

}
