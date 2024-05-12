/*
Question A16:
Suppose we have the following arrays:

var myArray1 = [3, 4, 5]
var myArray2 = [6, 7, 8]

Write code to append the myArray2 into myArray1.

*/


void main() {

var myArray1 = [3, 4, 5];
var myArray2 = [6, 7, 8];

var appended = [...myArray1, ...myArray2];

print(appended);

}
