import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_todos_bloc/models/todo.dart';

@immutable
abstract class TodosEvent extends Equatable {
  TodosEvent([List props = const []]) : super(props);
}

class LoadTodos extends TodosEvent {
  @override
  String toString() {
    return 'LoadTodos';
  }
}

class AddTodo extends TodosEvent {
  final Todo todo;

  AddTodo(this.todo) : super([todo]);

  @override
  String toString() {
    return 'AddTodo { todo: $todo }';
  }
}

class UpdateTodo extends TodosEvent {
  final Todo updatedTodo;

  UpdateTodo(this.updatedTodo) : super([updatedTodo]);

  @override
  String toString() {
    return 'UpdateTodo { todo: $updatedTodo }';
  }
}

class DeleteTodo extends TodosEvent {
  final Todo todo;

  DeleteTodo(this.todo) : super([todo]);

  @override
  String toString() {
    return 'DeleteTodo { todo: $todo }';
  }
}

class ClearCompleted extends TodosEvent {
  @override
  String toString() {
    return 'ClearCompleted';
  }
}

class ToggleAll extends TodosEvent {
  @override
  String toString() {
    return 'ToggleAll';
  }
}