import 'package:flutter/material.dart';
import 'package:myapp/mobile/experiencia.dart';
import 'package:myapp/mobile/perfil.dart';
import 'package:myapp/mobile/skill.dart';

class Portifolio extends StatefulWidget {
  const Portifolio({super.key});

  @override
  State<Portifolio> createState() => _PortifolioState();
}

class _PortifolioState extends State<Portifolio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurpleAccent,
              ),
              child: const Experiencia(),
            ),
          ),
          const VerticalDivider(
            color: Colors.grey,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            width: 20,
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepOrangeAccent,
              ),
              child: const Perfil(),
            ),
          ),
          const VerticalDivider(
            color: Colors.grey,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            width: 20,
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.brown,
              ),
              child: const Skill(),
            ),
          ),
        ],
      ),
    );
  }
}