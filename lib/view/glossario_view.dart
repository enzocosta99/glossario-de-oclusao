// ignore_for_file: use_super_parameters, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:glossario_de_oclusao/model/termo_tecnico.dart';
import 'package:glossario_de_oclusao/model/modelo_app_bar.dart';
import 'package:glossario_de_oclusao/model/modelo_drawer.dart';

class GlossarioView extends StatelessWidget {
  const GlossarioView({Key? key}) : super(key: key);

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
          padding: EdgeInsets.only(bottom: 47),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
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
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: Text(
                  'TERMOS TÉCNICOS',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TermoTecnico(
                        titulo: 'Relação Cêntrica (RC)',
                        descricao: 'Relacionamento maxilomandibular independente do contato dentário, no qual os côndilos se articulam na posição anterossuperior contra as inclinações posteriores das eminências articulares. Nesta posição, a mandíbula realiza apenas um movimento de rotação. A partir desta posição fisiológica, de relação maxilomandibular, o paciente pode realizar movimentos laterais, verticais ou protrusivos. Clinicamente é uma posição de referência útil e repetível. Portanto, a RC é uma posição condilar que independe dos contatos dentários.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Espaço Funcional Livre (EFL)',
                        descricao: 'Distância entre os dentes antagonistas quando a mandíbula está em posição de repouso postural. É a diferença entre a dimensão vertical de repouso e a de oclusão e apresenta valores médios de 3 mm. O Glossário de termos protéticos, em sua 9ª edição (GPT-9, 2017) conceitua esse espaço como Espaço de Repouso Interoclusal (IORS – interoclusal rest space).',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Máxima Intercuspidação Habitual (MIH)',
                        descricao: 'Posição de intercuspidação completa dos dentes opostos, independentemente da posição condilar. Às vezes referida como o melhor ajuste dos dentes, independentemente da posição condilar.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Curva de Spee',
                        descricao: 'Curva anteroposterior que se estende da ponta do canino até as cúspides do último dente, em formato ascendente.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Curva de Wilson',
                        descricao: 'Curva mediolateral. Em teoria, a oclusão deve ser esférica, a curvatura das cúspides, tal como previsto no plano frontal expresso em ambos os arcos; a curvatura no arco mandibular sendo côncava e o no arco maxilar sendo convexa.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Fenômeno de Christensen',
                        descricao: 'Espaço que ocorre entre as superfícies oclusais dos dentes posteriores antagonistas durante a protrusão mandibular.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Guia anterior',
                        descricao: 'Relação dos dentes anteriores que evita o contato dos dentes posteriores em todos os movimentos mandibulares excêntricos.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Guia Canina',
                        descricao: 'Uma forma de proteção articular mútua, na qual o overlap horizontal e vertical dos caninos desocluem os dentes posteriores nos movimentos excursivos da mandíbula.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Interferência Oclusal',
                        descricao: 'Qualquer contato dentário que impeça as demais superfícies oclusais de realizarem contatos oclusais estáveis e harmônicos.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Trauma Oclusal',
                        descricao: 'Trauma nos tecidos periodontais a partir de forças funcionais ou parafuncionais, causando prejuízos que excedem as capacidades adaptativas e reparadoras, pode ser autolimitado ou progressivo.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Dimensão Vertical de Oclusão (DVO)',
                        descricao: 'Distância entre dois pontos anatômicos ou selecionados/marcados (geralmente um na ponta do nariz e outro no queixo) na posição de máxima intercuspidação habitual (MIH).',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Dimensão Vertical de Repouso (DVR) / Relação de Repouso Mandibular',
                        descricao: 'Quando o paciente está em posição de repouso confortável, com os côndilos em posição neutra, não forçada, e os músculos encontram-se em estado de mínima atividade de contração.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Plano Oclusal',
                        descricao: 'Plano estabelecido pelas superfícies incisais e oclusais dos dentes.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Posição Oclusal',
                        descricao: 'Relação entre a maxila e mandíbula quando a mandíbula está fechada e os destes estão na posição de máxima intercuspidação, esta posição pode ou não ser coincidente com a oclusão cêntrica.',
                      ),
                      SizedBox(height: 10),
                      TermoTecnico(
                        titulo: 'Oclusão cêntrica',
                        descricao: 'Posição de contatos dentários na qual a mandíbula está em relação cêntrica, pode ou não coincidir com a máxima intercuspidação habitual.',
                      ),
                      SizedBox(height: 10),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
