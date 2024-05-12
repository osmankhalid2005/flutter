/*
Suppose you have a range of numbers, and their respective grades:
10 – 30, grade E
31 – 50, grade D
51 – 70, grade C
71 – 90, grade B
91 – 100, grade A

Write a switch – case statement, that takes the marks and show the grade.

*/

void main(List <String>args) {
int num = 45;

switch(num)
{
  case >= 10 && <= 30:
    print("grade E");
    break;

  case >= 31 && <= 50:
    print("grade D");
    break;

  case >= 51 && <= 70:
    print("grade C");
    break;

  case >= 71 && <= 90:
    print("grade B");
    break;

   case >= 91 && <= 100:
    print("grade A");
    break;
  }
}
