void main() {
  List<Map<String, dynamic>> students = [

    {"position": 10, "name": "Jawad"},

    {"position": 33, "name": "Faisal"},

    {"position": 4, "name": "Zahid"},

    {"position": 6, "name": "Ali"},

    {"position": 9, "name": "Noman"},

    {"position": 4, "name": "Ben"},

  ];

  // select * from students order by position, name;

  students.sort((a, b) {
  var test = a["position"].compareTo(b["position"]);
    if( test  == 0 ) 
      return a["name"].compareTo(b["name"]);    
    else    
      return test;    
  });

  print(students);

}
