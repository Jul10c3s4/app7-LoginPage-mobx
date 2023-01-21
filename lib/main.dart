import 'package:app7_mobx/login.dart';
import 'package:app7_mobx/pages/page_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //O provider é usado para o mobx pode ser utilizado no aplicativo e assim pode ser alterado os valores das variáveis sem ser utilizado o setState e com isso o aplicativo não precisará reconstruir toda a tela
    return Provider<Login>(
      create: (_) => Login(),
      child: MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.deepPurpleAccent
      ),
      home: PageLogin(),
    ),
    );
  }
}
