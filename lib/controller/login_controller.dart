import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:glossario_de_oclusao/view/glossario_view.dart';
import 'package:glossario_de_oclusao/view/login_view.dart';

import '../view/util.dart';

class LoginController {
  //
  // CRIAR CONTA de um usuário no serviço Firebase Authentication
  //
  criarConta(context, nome, email, codigoDeMatricula, senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: senha,
    )
        .then(
      (resultado) {
        //Usuário criado com sucesso!

        //Armazenar o NOME e UID do usuário no Firestore
        FirebaseFirestore.instance.collection("usuarios").add(
          {
            "uid": resultado.user!.uid,
            "nome": nome,
            "codigo_de_matricula": codigoDeMatricula,
          },
        );
        sucesso(context, 'Usuário criado com sucesso!');
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const LoginView()),
        );
      },
    ).catchError((e) {
      //Erro durante a criação do usuário
      switch (e.code) {
        case 'email-already-in-use':
          erro(context, 'O email já foi cadastrado.');
          break;
        case 'invalid-email':
          erro(context, 'O formato do e-mail é inválido.');
          break;
        default:
          erro(context, 'ERRO: ${e.toString()}');
      }
    });
  }

  //
  // LOGIN de usuário a partir do provedor Email/Senha
  //
  login(context, email, senha) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((resultado) {
      sucesso(context, 'Usuário autenticado com sucesso!');
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const GlossarioView()),
      );
    }).catchError((e) {
      switch (e.code) {
        case 'invalid-email':
          erro(context, 'O formato do e-mail é inválido.');
        case 'invalid-credential':
          erro(context, 'Usuário e/ou senha inválida.');
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

  esqueceuSenha(context, email) {
    if (email.isNotEmpty && (email.endsWith("@sou.unaerp.edu.br") || email.endsWith("@unaerp.br"))) {
      FirebaseAuth.instance.sendPasswordResetEmail(
        email: email,
      );
      sucesso(context, 'Email enviado com sucesso.');
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const LoginView()),
      );
    } else {
        erro(context, 'Informe um email válido para recuperar a conta.');
    }
  }

  //
  // Efetuar logou do usuário
  //
  logout() {
    FirebaseAuth.instance.signOut();
  }

  //
  // Retornar o UID (User Identifier) do usuário que está logado no App
  //
  idUsuarioLogado() {
    return FirebaseAuth.instance.currentUser!.uid;
  }

}
