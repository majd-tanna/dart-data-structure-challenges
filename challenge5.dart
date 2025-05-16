class Node {
  int? data;
  Node? next;
  Node(this.data);
}

reverse(Node? head) {
  Node? prev = null;
  Node? current = head;
  Node? next;

  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  head = prev;
}
