/*
Suppose we have a list of 4 integers. You need to sum the elements of the list without using any loops or calling list elements through their indexes.
*/

void main(List <String>args) {
var items = [10, 20, 30, 40];

int sum = items.reduce((a, b) => a + b);
print(sum);
}
