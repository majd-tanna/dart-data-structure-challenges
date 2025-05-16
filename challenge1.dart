List reverseList(List list) {
  List list1 = [];

  for (var item in list) {
    list1.add(item); //push
  }

  List revers = [];

  while (list1.isNotEmpty) {
    revers.add(list1.removeLast()); //removelast = pop
  }

  return revers;
}
