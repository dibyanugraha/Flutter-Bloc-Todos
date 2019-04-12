import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_todos_bloc/models/todo.dart';

@immutable
abstract class TodosState extends Equatable {
  TodosState([List props = const []]) : super(props);
}

class TodosLoading extends TodosState {
  @override
  String toString() {
    return 'TodosLoading';
  }
}

class TodosLoaded extends TodosState {
  final List<Todo> todos;

  TodosLoaded([this.todos = const []]) : super([todos]);

  @override
  String toString() {
    return 'TodosLoaded { todos: $todos }';
  }
}

class TodosNotLoaded extends TodosState {
  @override
  String toString() {
    return 'TodosNotLoaded';
  }
}
