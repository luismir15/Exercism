class Bob {
  Map<String, String>? vocabulary;

  Bob() {
    vocabulary = {
      'whatever': 'Whatever.',
      'chill': 'Whoa, chill out!',
      'sure': 'Sure.',
      'calm': 'Calm down, I know what I\'m doing!',
      'fine': 'Be that way!'
    };
  }

  String response(String input) {
    List<String> sentence = input
        .split(new RegExp(r'[.,:!&@$%^*#()0-9 \t\n]+'))
        .where((s) => s.isNotEmpty)
        .toList();
    print(sentence);
    return '';
  }
}
