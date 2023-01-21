import 'package:app7_mobx/login.dart';
import 'package:app7_mobx/pages/homepage.dart';
import 'package:app7_mobx/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  late Login login;
  late ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    login = Provider.of<Login>(context);

    disposer = reaction((_) => login.loggedIn, (loggedIn) {
      if (login.loggedIn) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomePage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Card(
              elevation: 16,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Observer(builder: (_) {
                      return CustomTextFiled(
                          enabled: !login.loading,
                          controler: emailController,
                          title: "E-mail",
                          prefixIcon: Icons.account_circle,
                          obscure: false,
                          textInput: TextInputType.emailAddress,
                          callback: login.setEmail,
                          );
                    }),
                    SizedBox(
                      height: 20,
                    ),
                    Observer(builder: (_) {
                      return CustomTextFiled(
                        callback: login.setsenha,
                          enabled: !login.loading,
                          controler: senhaController,
                          title: "Senha",
                          sufixIcon:  IconButton(icon: Icon(!login.senhaVisivel ? Icons.visibility : Icons.visibility_off), onPressed: login.setvisible,),
                          prefixIcon: Icons.lock, 
                          obscure: !login.senhaVisivel,
                          textInput: TextInputType.text);
                    }),
                    SizedBox(
                      height: 25,
                    ),
                    Observer(
                      builder: (_) {
                        return ElevatedButton(
                          onPressed: login.isFormValid ? login.loginPressed:null,
                          child: login.loading ? CircularProgressIndicator(color: Colors.lightBlue,) : Text(
                            'Login',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(20),
                            backgroundColor: login.isFormValid ? Colors.purple.shade400 : Colors.grey.shade400,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ))),
    );
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }
}
