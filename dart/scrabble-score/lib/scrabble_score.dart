// Put your code here
int score(String word) {
  if (word.isEmpty) {
    return 0;
  }

  int count = 0;

  Map<int, List<String>> letters = {
    1: ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
    2: ['D', 'G'],
    3: ['B', 'C', 'M', 'P'],
    4: ['F', 'H', 'V', 'W', 'Y'],
    5: ['K'],
    8: ['J', 'X'],
    10: ['Q', 'Z']
  };

  word.split('').forEach((element) {
    var character = element.toUpperCase();
    int point = letters.entries
        .firstWhere((entry) => entry.value.contains(character))
        .key;

    count += point;
  });

  return count;
}
