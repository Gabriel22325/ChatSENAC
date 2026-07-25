import 'package:flutter/material.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Login()),
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: [FlutterLogo(size: 18,),
          Text("ChatSENAC"),
          SizedBox(height: 32,)
        ],
        ),
        //Titulos

        Text("Entre na sua conta", style: Tipografia.h1
        ),
        Text("Coloque o seu email e senha para logar" , style: Tipografia.subtitulo),


        // Campos
        Text("Email"),
        TextField(),
        Text("Senha"),
        TextField(),
        InkWell(child: Text("Esqueceu a senha?", textAlign: TextAlign.right,
          style: Tipografia.Link,)),

        //Botões
        ElevatedButton(onPressed: null, child: Text("entrar")),
        Text("Ou", textAlign: TextAlign.center,),
        ElevatedButton(onPressed: null, child: Text("Continuar com o Google")),
        ElevatedButton(
            onPressed: null, child: Text("Continuar com o Facebook")),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Não tem uma conta?"),
            InkWell(child: Text("Cadastre-se",
            style: Tipografia.Link)),
          ],)
      ],
    );
  }
}