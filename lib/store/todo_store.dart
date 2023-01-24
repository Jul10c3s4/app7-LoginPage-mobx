import 'package:mobx/mobx.dart';

part 'todo_store.g.dart';

//essa classe foi criada para tratar a lista de tarefas
//classe criada para juntar as duas partes
class Todo_store = _Todo_store with _$Todo_store;

//classe principal
abstract class _Todo_store with Store {
  _Todo_store(this.title);

  final String title;

  @observable
  //serve para verificar se a tarefa foi feita
  bool done = false;

  @action
  void toggleDone() => done = !done;
}
