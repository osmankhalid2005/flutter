/*
Question A17:
Suppose we have an Dart object { name: 'Devin', hairColor: 'brown' }
Write code to change value of hairColor using spread syntax (…) three dots.
*/


void main() {

var object = {'name': 'Devin', 'hairColor': 'brown'};

print("Before change");
print(object);

object = {...object, 'hairColor':'red'};

print("After change");
print(object);
}
