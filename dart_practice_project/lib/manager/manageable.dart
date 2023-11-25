//Create an abstract class Manageable with generic type T.
//It should have two methods add and showList.
//The add method should take an argument of type T and add it to the list.
//The showList method should print the list.
abstract class Manageable<T> {
  //two abstract methods add and showList
  // class that implements Manageable must override these methods.
  void add(T item);
  void showList(List<T> list) {
    for (T item in list) {
      print(item.toString());
    }
  }

  //two methods update and delete are not abstract
  // class that extends maybe or not override these methods.
  void update(String id) {}
  void delete(String id) {}
}
