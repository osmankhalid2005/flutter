/*
Question A10:
Suppose the equation is:
Z = x2 + 4y2 – 8N2  
Where N is represented by a separate equation:
N = p2 + q2
Solve ‘Z’ with arrow function, such that you need to define the arrow function N within the body of Z.
*/

void main() {
print( Z(1, 2)(3, 4) );
}

var Z = (int x, int y) => (int p, int q) => x*x + 4*y*y - 8*(p*p + q*q);
