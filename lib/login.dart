//codigo usado para rodar o arquivo mobx: flutter packages pub run build_runner watch
import 'package:mobx/mobx.dart';

part 'login.g.dart';

//classe criada para juntar as duas partes
class Login = _Login with _$Login;

//classe principal
abstract class _Login with Store {
  //os observables observão mudanças ocorridas na variáveis para em seguida alterar a variável que está dentro do observer que renderiza algo na tela
  @observable
  String email = "";

  @observable
  String senha = "";

  @observable
  bool senhaVisivel = false;

  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  //as actions são chamadas quando há algum botão que chama alguma função que chama algum método action na qual alterará alguma variável que em seguida será percebida pelo observable
  @action
  void setEmail(String text) => email = text;

  @action
  void setsenha(String text) => senha = text;

  @action
  void setvisible() => senhaVisivel = !senhaVisivel;

  @action
  Future<void> login() async {
    loading = true;
    await Future.delayed(const Duration(seconds: 3));
    loading = false;
    loggedIn = true;
    email = '';
    senha = '';
  }

  @action
  void logOut() => loggedIn = false;

  //os computeds geralmete verificam se alguma expressão é verdaddeira ou falsa, eles são como reações dos actions
  @computed
  Function() get loginPressed =>
      (isFormValid && !loading) ? login : () {};

  @computed
  bool get isEmailValid => email.contains('@');

  @computed
  bool get isPasswordValid => senha.length >= 6;

  @computed
  bool get isFormValid => isEmailValid && isPasswordValid;
}
