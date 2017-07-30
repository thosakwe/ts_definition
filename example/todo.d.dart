class TodoList {
  String name;

  TodoList({this.name});

  static TodoList parse(Map map) {
    return new TodoList(name: map['name']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name};
  }
}

class Todo {
  String name;

  dynamic union;

  TodoStatus status;

  List<TodoList> lists;

  Todo({this.name, this.union, this.status, this.lists});

  static Todo parse(Map map) {
    return new Todo(
        name: map['name'],
        union: map['union'],
        status: map['status'] is! Map ? null : TodoStatus.parse(map['status']),
        lists: map['lists'] is! Iterable
            ? null
            : map['lists'].map<TodoList>(TodoList.parse).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'union': union,
      'status': status?.toJson(),
      'lists': lists?.map((x) => x.toJson())
    };
  }
}

/**
 * Arbitrary comments that will also appear in the generated Dart source. :)
 */
abstract class TodoState {
  static const num INCOMPLETE = 0;

  /// Another arbitrary comment.
  static const num IN_PROGRESS = 1;

  /**
     * If we preserve comments, then we can preserve documentation...
     * @type {number}
     */
  static const num COMPLETED = 2;
}

class TodoStatus {
  /**
         * The state of this to-do item.
         */
  num state;

  TodoStatus({this.state});

  static TodoStatus parse(Map map) {
    return new TodoStatus(state: map['state']);
  }

  Map<String, dynamic> toJson() {
    return {'state': state};
  }
}
