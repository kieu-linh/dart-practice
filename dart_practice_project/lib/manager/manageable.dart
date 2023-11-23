abstract class Manageable<T> {
  void add(T item);
  void showList();
}

void addProductOrCategory<T>(Manageable<T> manager, T item) {
  manager.add(item);
}
