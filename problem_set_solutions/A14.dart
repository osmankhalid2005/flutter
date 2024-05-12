/*
Question A14:
Create a small calculator application using typedef functions performing these operations, add, subtract, multiply, and divide.
*/

typedef double Calculator(double a, double b);

void main() {

Calculator myfunction;

myfunction = addition;
print( myfunction(5, 6));

myfunction = subtraction;
print( myfunction(7, 3));

myfunction = multiplication;
print( myfunction(2, 3));

myfunction = division;
print( myfunction(9, 3));

}


double addition(double a, double b) {
return a+b;
}



double subtraction(double a, double b) {
return a-b;
}


double multiplication(double a, double b) {
return a*b;
}

double division(double a, double b) {
return a/b; 
}
