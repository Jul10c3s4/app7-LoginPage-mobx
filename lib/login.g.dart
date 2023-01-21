// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Login on _Login, Store {
  Computed<dynamic Function()>? _$loginPressedComputed;

  @override
  dynamic Function() get loginPressed => (_$loginPressedComputed ??=
          Computed<dynamic Function()>(() => super.loginPressed,
              name: '_Login.loginPressed'))
      .value;
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid => (_$isEmailValidComputed ??=
          Computed<bool>(() => super.isEmailValid, name: '_Login.isEmailValid'))
      .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_Login.isPasswordValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid => (_$isFormValidComputed ??=
          Computed<bool>(() => super.isFormValid, name: '_Login.isFormValid'))
      .value;

  late final _$emailAtom = Atom(name: '_Login.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$senhaAtom = Atom(name: '_Login.senha', context: context);

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$senhaVisivelAtom =
      Atom(name: '_Login.senhaVisivel', context: context);

  @override
  bool get senhaVisivel {
    _$senhaVisivelAtom.reportRead();
    return super.senhaVisivel;
  }

  @override
  set senhaVisivel(bool value) {
    _$senhaVisivelAtom.reportWrite(value, super.senhaVisivel, () {
      super.senhaVisivel = value;
    });
  }

  late final _$loadingAtom = Atom(name: '_Login.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$loggedInAtom = Atom(name: '_Login.loggedIn', context: context);

  @override
  bool get loggedIn {
    _$loggedInAtom.reportRead();
    return super.loggedIn;
  }

  @override
  set loggedIn(bool value) {
    _$loggedInAtom.reportWrite(value, super.loggedIn, () {
      super.loggedIn = value;
    });
  }

  late final _$loginAsyncAction = AsyncAction('_Login.login', context: context);

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$_LoginActionController =
      ActionController(name: '_Login', context: context);

  @override
  void setEmail(String text) {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.setEmail');
    try {
      return super.setEmail(text);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setsenha(String text) {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.setsenha');
    try {
      return super.setsenha(text);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setvisible() {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.setvisible');
    try {
      return super.setvisible();
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logOut() {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.logOut');
    try {
      return super.logOut();
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
senha: ${senha},
senhaVisivel: ${senhaVisivel},
loading: ${loading},
loggedIn: ${loggedIn},
loginPressed: ${loginPressed},
isEmailValid: ${isEmailValid},
isPasswordValid: ${isPasswordValid},
isFormValid: ${isFormValid}
    ''';
  }
}
