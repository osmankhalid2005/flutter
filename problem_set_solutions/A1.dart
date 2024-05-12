/*
Question A1:
Write a program that takes as input the command line arguments of types string, integer and decimal value. In case of a string, its length should be displayed, for an integer value, it should be multiplied by 100, and for a decimal value, we need to take its power of 3.
*/

import 'dart:math';

void main(List <String>args) {

for(var item in args) {
  if(int.tryParse(item) != null) {
    var num = int.parse(item);
    print(num * 100);
  }
  else if(double.tryParse(item) != null) {
    var num = double.parse(item);
    print( pow(num, 3));
  }
  else {
    print(item.length);
  }
  
}

}
