bool isBalanced(String input) {
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (char == '(' || char == '[' || char == '{') {
      stack.add(char);
    } else if (char == ')' || char == ']' || char == '}') {
      if (stack.isEmpty) return false;

      String lastOpen = stack.removeLast();

      if ((char == '(' && lastOpen == ')') ||
          (char == '[' && lastOpen == ']') ||
          (char == '{' && lastOpen == '}')) {
        return true;
      }
    }
  }

  return stack.isEmpty;
}
