import 'package:flutter/material.dart';
import 'package:myapp/classes/card_format.dart';

class Experiencia extends StatefulWidget {
  const Experiencia({super.key});

  @override
  State<Experiencia> createState() => _ExperienciaState();
}

class _ExperienciaState extends State<Experiencia> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                child: const Text("Minhas Experiências")),
            Column(
                children: listOfCardsExpeciencia
                    .map(
                      (item) => CardExperiencia(cards: item),
                    )
                    .toList()),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CardExperiencia extends StatefulWidget {
  CardExperiencia({
    super.key,
    this.cards,
  }) {
    teste = cards?.lista;
  }

  CardExperienciaFormat? cards;
  List<Map<String, dynamic>>? teste;

  @override
  State<CardExperiencia> createState() => _CardExperienciaState();
}

class _CardExperienciaState extends State<CardExperiencia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: Text(
                widget.cards!.title!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
              indent: 40,
              endIndent: 40,
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.teste!
                    .map(
                      (e) => Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: TextoComBolinha(
                          text: e["topico"],
                          descricao: e["descricaoTopico"],
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextoComBolinha extends StatefulWidget {
  const TextoComBolinha({super.key, this.text, this.descricao});

  final String? text;
  final List<String>? descricao;

  @override
  State<TextoComBolinha> createState() => _TextoComBolinhaState();
}

class _TextoComBolinhaState extends State<TextoComBolinha> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.descricao!
              .map(
                (e) => Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(e), // Descrições
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
