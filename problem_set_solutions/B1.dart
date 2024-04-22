class Student{

  String? name;

  int? age;

  int? marks;

  Student({this.name, this.age, this.marks});

}


void main() {
var mylist = [

 Student(name:"Ali", age:45, marks:32 ),

 Student(name:"Faisal", age:41, marks:43 ),

 Student(name:"Noman", age:11, marks: 43),

Student(name:"Faisal", age:8, marks:43)

];

mylist.where( (item) => item.age! > 30 && (item.name=='Noman'||item.name=='Faisal') ).forEach((item) {

  print("${item.name} ${item.age} ${item.marks}");

  }

  );

}
