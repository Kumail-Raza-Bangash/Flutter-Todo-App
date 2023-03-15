class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Walk', isDone: true),
      ToDo(
        id: '02',
        todoText: 'Meeting',
      ),
      ToDo(
        id: '03',
        todoText: 'Check Email',
      ),
      ToDo(id: '04', todoText: 'Check WhatsApp', isDone: true),
      ToDo(
        id: '05',
        todoText: 'Flutter Toturial',
      ),
      ToDo(
        id: '06',
        todoText: 'Dart Toturial',
      ),
    ];
  }
}
