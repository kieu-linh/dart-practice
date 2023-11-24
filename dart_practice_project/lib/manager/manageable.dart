//Create an abstract class Manageable with generic type T. 
//It should have two methods add and showList. 
//The add method should take an argument of type T and add it to the list. 
//The showList method should print the list.
abstract class Manageable<T> {
  void add(T item);
  void showList();
}

