class WordCount {
  Map? countWords(String sentence) {
    List<String> parts = sentence.split(new RegExp(r'[.,:!?&@$%^ \t\n]+'));
    Map<String, int> wordCount =
        parts.fold(<String, int>{}, (Map<String, int> map, word) {
      if (!(!map.containsKey(word))) {
        map[word] = map[word]! + 1;
      } else {
        map[word] = 1;
      }
      return map;
    });

    return wordCount;
  }
}
