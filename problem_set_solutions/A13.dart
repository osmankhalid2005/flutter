/*
Question A13:

Given the following list: ['apples', 'bananas', 'oranges'];

Append a string with each element of the list and capitalize each element of list. Use a combination of map and forEach function.
*/

void main() {
var list = ['apples', 'bananas', 'oranges'];

list.map( (item) => '$item hello').forEach( (item) => print(item.toUpperCase()));

}
