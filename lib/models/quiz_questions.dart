class QuizQuestion {
  const QuizQuestion(this.question, this.options);
  final String question;
  final List<String> options;
  List<String> shuffeldList() {
    List<String> shuffeld = List.of(options);
    shuffeld.shuffle();
    return shuffeld;
  }
}
