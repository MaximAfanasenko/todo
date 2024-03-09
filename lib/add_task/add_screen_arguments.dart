class AddScreenArguments {
  final String title;
  final String text;
  final DateTime selectedDeadline;

  AddScreenArguments(this.title, this.text, this.selectedDeadline);

  AddScreenArguments.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        text = json['text'],
        selectedDeadline = DateTime.parse(json['selectedDeadline']);

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'text': text,
      'selectedDeadline': selectedDeadline.toString()
    };
  }
}
