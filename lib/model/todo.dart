class Todo {
  String? id;
  String? title;
  bool? isDone;

  Todo({required this.id, required this.title, this.isDone = false});

  static List<Todo> todoList() {
    return [
      Todo(id: '1', title: 'Buy milk', isDone: true),
      Todo(id: '2', title: 'Do laundry'),
      Todo(id: '3', title: 'Clean the house'),
      Todo(id: '4', title: 'Buy new shoes', isDone: true),
      Todo(id: '5', title: 'Go to gym'),
      Todo(id: '6', title: 'Do homework', isDone: true),
      Todo(id: '7', title: 'Cook dinner'),
      Todo(id: '8', title: 'Call mom', isDone: true),
      Todo(id: '9', title: 'Wash dishes', isDone: true),
      Todo(id: '10', title: 'Read a book'),
    ];
  }
}
