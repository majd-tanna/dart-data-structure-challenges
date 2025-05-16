class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;

  void removeAll(int value) {
    while (head != null && head!.data == value) {
      head = head!.next;
    }

    Node? current = head;

    while (current != null && current.next != null) {
      if (current.next!.data == value) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }
  }
}
