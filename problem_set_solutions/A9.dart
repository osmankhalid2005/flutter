import 'dart:math';

void main() {

var ans = A( 1, 2, 3)(1, 2)(1, 2);

print(ans);
}

var A = (int x, int y, int p) 
   => (int a, int b) 
   => (int n, int q) 
   => x*x + 2*x*y + p*(a*a + 4*pow(n*n + q*n + 1, 2) - 8*b + 2*a);

