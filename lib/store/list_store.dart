import 'package:app7_mobx/store/todo_store.dart';
import 'package:mobx/mobx.dart';

part 'list_store.g.dart';

//essa classe foi criada para tratar a lista de tarefas
//classe criada para juntar as duas partes
class List_store = _List_store with _$List_store;

//classe principal
abstract class _List_store with Store {
  @observable
  String NewTodoTitle = '';

  @action
  void setNewTodoTitle(String value) => NewTodoTitle = value;

  @computed
  bool get isFormValid => NewTodoTitle.isNotEmpty;

  ObservableList<Todo_store> list = ObservableList<Todo_store>();

  ObservableList<Todo_store> listSearch = ObservableList<Todo_store>();

  @action
  void addTodo() {
    list.insert(0, Todo_store(NewTodoTitle));
    NewTodoTitle = '';
  }

  @action
  void creatListSearch(Todo_store todo) {
    listSearch.insert(0, todo);
  }

  @action
  void deleteList(Todo_store todo) {
    list.remove(todo);
  }

  @action
  void deleteListSearch(Todo_store todo) {
    listSearch.remove(todo);
  }
}
