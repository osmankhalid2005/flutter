void main() {



 List<Map<String, dynamic>> mylist = [

    {"name":"Ali", "age":45, "marks":32 },

  {"name":"Noman", "age":32, "marks":23 },

  {"name":"Faisal", "age":41, "marks":43 },

  {"name":"Noman", "age":11, "marks":43 },

   {"name":"Faisal", "age":8, "marks":43 },

  ];


mylist.where( (item) => item['age'] > 30 && (item['name']=='Noman'||item['name']=='Faisal') ).forEach((item) {

  print("${item['name']} ${item['age']} ${item['marks']}");

  }

  );

}
