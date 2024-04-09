import 'package:flutter/material.dart';
import 'package:glossario_de_oclusao/pages/modelos/modelo_app_bar.dart';
import 'package:glossario_de_oclusao/pages/modelos/modelo_drawer.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  /*Widget criarContainer(label) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 80,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 10],
            colors: [
              Color(0XFFD6D6D6),
              Colors.white,
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(100)
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 15.0,
                offset: Offset(0.0, 7)
            )
          ],
        ),
        child: SizedBox.expand(
          child: TextButton(
            onPressed: () {},
            child: Center(
              child: Text(
                label,
                style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: getAppBar(context),
      drawer: getDrawer(context),
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 10],
            colors: [
              Colors.blue,
              Colors.white,
            ],
          ),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          //margin: EdgeInsets.only(bottom: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade700,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              Container(
                    child: Padding(
                      padding: EdgeInsets.only(top:20, right: 8, left: 8, bottom: 10),
                      child: Text(
                        'Sobre o APP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 18, right: 25, left: 25),
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "O aplicativo Glossário de Oclusão foi desenvolvido para um projeto da faculdade, no primeiro semestre de 2024, utilizando apenas Flutter. Além disso, foi programado exclusivamente pelo aluno Enzo Goulart Alvarenga Costa, de RA 837214, estudante do curso de Engenharia de Software da UNAERP.\n\nInicialmente, o principal objetivo do projeto era desenvolver um aplicativo mobile multiplataformas para fins educacionais voltado para o Ensino de Oclusão Dentária, denominado Glossário de Oclusão.",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
