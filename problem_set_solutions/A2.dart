/*
Create a list of records, consisting of name and age values. Sort list with respect to name and age.
*/

void main(List <String>args) {

var records = [
  (name: 'Ali', age: 45),
  (name: 'Javed', age: 54),
  (name: 'Salman', age: 36),
  (name: 'Ben', age: 36),
  (name: 'Javed', age: 45),
  ];

print("Before sorting: ");
print(records);

records.sort((a, b) { 
  var result = a.name.compareTo(b.name);

  if( result == 0)
  {
    return a.age.compareTo((b.age));
  }
  else
  { 
    return result;
  }  
  
  
  });


print("After sorting: ");
print(records);  

}
