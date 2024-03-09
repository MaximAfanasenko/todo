class TaskItem {
  const TaskItem(this.title, this.text, this.date);

  final String title;
  final String text;
  final DateTime date;
  bool get expired => DateTime.now().isAfter(date);
}
