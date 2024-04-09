// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:glossario_de_oclusao/pages/glossario/glossario.dart';
import 'package:glossario_de_oclusao/pages/login/login_page.dart';
import 'package:glossario_de_oclusao/pages/sobre/sobre.dart';

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
              MaterialPageRoute(builder: (context) => const SobrePage()),
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
              MaterialPageRoute(builder: (context) => const GlossarioPage()),
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
              MaterialPageRoute(builder: (context) => const LoginPage()),
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
