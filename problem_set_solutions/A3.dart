/*
Create a list of integers, 10, 20, 30, 40.
Create another list using the first list, such that at its initialization, the new list is initialized like this:
Item 1: 10, Item 2: 20, Item 3: 30, Item 4: 40.
*/

void main(List <String>args) {
var items = [10, 20, 30, 40];

var newlist = [for( int i in items) 'Item ${ (i/10).round()}: $i'];
//Item 1: 10, Item 2: 20, Item 3: 30, Item 4: 40

print(newlist);
}
