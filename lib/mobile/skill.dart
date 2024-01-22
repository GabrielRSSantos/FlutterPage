import 'package:flutter/material.dart';
import 'package:myapp/classes/card_format.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text("Hard Skills"),
            ),
            Column(
              children: listOfCardsSkills
                  .map(
                    (item) => Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 5),
                      child: CardWidget(card: item),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatefulWidget {
  const CardWidget({super.key, this.card});

  final CardSkillFormat? card;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.16,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image.asset(
                widget.card!.image ?? 'Error',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 5),
                        child: Text(
                          widget.card!.title ?? 'Error',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.all(5),
                        child: Text(widget.card!.subtitle ?? 'Error'),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
