class Node {
  int? data;
  Node? next;
  Node(this.data);
}

findMiddle(Node head) {
  Node? p1 = head;
  Node? p2 = head;

  while (p1 != null && p2 != null) {
    p1 = p1.next;
    p2 = p2.next!.next;
  }

  return p1;
}
