// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_super_parameters

import 'package:flutter/material.dart';

class TermoTecnico extends StatefulWidget {
  final String titulo;
  final String descricao;

  const TermoTecnico({
    Key? key,
    required this.titulo,
    required this.descricao,
  }) : super(key: key);

  @override
  _TermoTecnicoState createState() => _TermoTecnicoState();
}

class _TermoTecnicoState extends State<TermoTecnico> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.titulo,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(widget.descricao),
          ),
          isExpanded: _isExpanded,
        ),
      ],
    );
  }
}
