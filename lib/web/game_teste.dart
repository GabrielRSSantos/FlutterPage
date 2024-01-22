import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:myapp/classes/animation.dart';

class GameSaria extends StatefulWidget {
  final Vector2? tamanho;
  final Color? backgroundColor;

  const GameSaria({super.key, required this.tamanho, required this.backgroundColor});

  @override
  State<GameSaria> createState() => _GameSariaState();
}

class _GameSariaState extends State<GameSaria> {
  @override
  Widget build(BuildContext context) {
    return GameWidget(
      backgroundBuilder: (context) => Container(
        color: widget.backgroundColor,
      ),
      game: GameTeste(widget.tamanho!),
    );
  }
}
