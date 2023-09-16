class HighScores {
  List<int>? scores;

  HighScores(List<int> scores) {
    this.scores = scores;
  }

  int latest() {
    return scores!.last;
  }

  int personalBest() {
    return scores!.reduce((curr, next) => curr > next ? curr : next);
  }

  List<int> personalTopThree() {
    scores!.sort();
    return scores!.sublist(scores!.length - 3);
  }
}
