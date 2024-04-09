import 'package:flutter/material.dart';
import 'package:glossario_de_oclusao/pages/glossario/glossario.dart';
import 'package:glossario_de_oclusao/pages/modelos/modelo_app_bar.dart';
import 'package:glossario_de_oclusao/pages/modelos/modelo_drawer.dart';
import 'package:glossario_de_oclusao/pages/login/login_page.dart';
import 'package:glossario_de_oclusao/pages/sobre/sobre.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget criarContainer(label) {
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
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: getAppBar(context),
      drawer: getDrawer(context),
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
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
        child: ListView(
          children: <Widget>[
            /*SizedBox(
              width: 250,
              height: 250,
              child: Image.asset("assets/images/dente_logo.png"),
            ),*/
            /*const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Glossário de Oclusão",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),*/
            const SizedBox(
              height: 30,
            ),
            //criarContainer("Login"),
            Container(
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SobrePage()),
                    );
                  },
                  child: const Center(
                    child: Text(
                      "Sobre",
                      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //criarContainer("Sobre"),
            Container(
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const GlossarioPage()),
                    );
                  },
                  child: const Center(
                    child: Text(
                      "Glossário",
                      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //criarContainer("Sair"),
            Container(
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Center(
                    child: Text(
                      "Sair",
                      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
