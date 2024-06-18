// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:glossario_de_oclusao/view/glossario_view.dart';
import 'package:glossario_de_oclusao/view/login_view.dart';
import 'package:glossario_de_oclusao/view/sobre_view.dart';

Drawer getDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          accountEmail: Text('enzo.costa@sou.unaerp.edu.br'),
          accountName: Text('Enzo Goulart Alvarenga Costa'),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              'EC',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SobreView()),
            );
          },
          leading: Icon(
            Icons.help,
            color: Colors.blue,
          ),
          title: Text('Sobre o app'),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const GlossarioView()),
            );
          },
          leading: Icon(
            Icons.create,
            color: Colors.blue,
          ),
          title: Text('Glossário'),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginView()),
            );
          },
          leading: Icon(
            Icons.clear,
            color: Colors.blue,
          ),
          title: Text('Sair'),
        ),
      ],
    ),
  );
}
