// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$List_store on _List_store, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_List_store.isFormValid'))
          .value;

  late final _$NewTodoTitleAtom =
      Atom(name: '_List_store.NewTodoTitle', context: context);

  @override
  String get NewTodoTitle {
    _$NewTodoTitleAtom.reportRead();
    return super.NewTodoTitle;
  }

  @override
  set NewTodoTitle(String value) {
    _$NewTodoTitleAtom.reportWrite(value, super.NewTodoTitle, () {
      super.NewTodoTitle = value;
    });
  }

  late final _$_List_storeActionController =
      ActionController(name: '_List_store', context: context);

  @override
  void setNewTodoTitle(String value) {
    final _$actionInfo = _$_List_storeActionController.startAction(
        name: '_List_store.setNewTodoTitle');
    try {
      return super.setNewTodoTitle(value);
    } finally {
      _$_List_storeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo =
        _$_List_storeActionController.startAction(name: '_List_store.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$_List_storeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void creatListSearch(Todo_store todo) {
    final _$actionInfo = _$_List_storeActionController.startAction(
        name: '_List_store.creatListSearch');
    try {
      return super.creatListSearch(todo);
    } finally {
      _$_List_storeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteList(Todo_store todo) {
    final _$actionInfo = _$_List_storeActionController.startAction(
        name: '_List_store.deleteList');
    try {
      return super.deleteList(todo);
    } finally {
      _$_List_storeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteListSearch(Todo_store todo) {
    final _$actionInfo = _$_List_storeActionController.startAction(
        name: '_List_store.deleteListSearch');
    try {
      return super.deleteListSearch(todo);
    } finally {
      _$_List_storeActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
NewTodoTitle: ${NewTodoTitle},
isFormValid: ${isFormValid}
    ''';
  }
}
