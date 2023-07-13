import 'dart:collection';
main() {
  Queue<int> queue = Queue();
  queue.addAll([10,20,30,40]);
  print(queue);
  print(queue is Queue);

  Iterator i = queue.iterator;

  while (i.moveNext()) {
    print(i.current);
  }
}