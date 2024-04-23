void main() {

var ans = A(1, 2)(3, 4);

print(ans);
}

var A = (int a, int b) => 
   (int p, int t) =>   
   p*p + 5*t + a*a + b*b*b*b;

