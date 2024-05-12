/* 
Question A20:

Given the following list of objects, you need to write myObjects.where().forEach() function, so that the name, age, and marks of those students are printed on screen whose age is greater than 25 and marks are greater than equal to 50, and name is Alice or Bob

myObjects.add(Student(name: 'Alice', age: 25, marks: 55));
  myObjects.add(Student(name: 'Bob', age: 30, marks: 50));
  myObjects.add(Student(name: 'Alice', age: 27, marks: 40));
  myObjects.add(Student(name: 'Charlie', age: 22, marks: 45));

*/


class Student  {
  String? name;
  int? age;
  double? marks;
  
  Student({this.name, this.age, this.marks});
}



void main() {

List<Student> myObjects = [];   
  myObjects.add(Student(name: 'Alice', age: 25, marks: 55));
  myObjects.add(Student(name: 'Bob', age: 30, marks: 50));
  myObjects.add(Student(name: 'Alice', age: 27, marks: 40));
  myObjects.add(Student(name: 'Charlie', age: 22, marks: 45));


myObjects.where((student) => student.age! > 25 && student.marks! >= 50 && (student.name == "Alice" || student.name == "Bob")).forEach((student)=>print("${student.name} ${student.age} ${student.marks}"));

}
