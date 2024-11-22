//list by age in ascending order and prints the sorted list.

void main() {
  Map<String, int> inventory = {'Apples': 50, 'Oranges': 30, 'Bananas': 20};

  /**
  * 
   - Update the quantity of 'Oranges' to 45.
 - Add a new item 'Mangoes' with a quantity of 60.
 - Remove 'Bananas' from the map.
  */

  inventory['Oranges'] = 45;
  inventory['Mangoes'] = 60;
  inventory.remove('Bananas');

  print(inventory);
}

