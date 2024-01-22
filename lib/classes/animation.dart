import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/image_composition.dart';
import 'package:flame/sprite.dart';

class GameTeste extends Game {
  late SpriteAnimationTicker a;
  late SpriteAnimation animation;
  late Vector2 tamanho;

  GameTeste(this.tamanho);

  @override
  Future<void> onLoad() async {
    final image = await images.load('sariaImg.png');
    Sprite saria = Sprite(
      image,
      srcPosition: Vector2(0, 0),
      srcSize: Vector2(480, 480),
    );

    Sprite saria2 = Sprite(
      image,
      srcPosition: Vector2(480, 0),
      srcSize: Vector2(480, 480),
    );

    Sprite saria3 = Sprite(
      image,
      srcPosition: Vector2(480 * 2, 0),
      srcSize: Vector2(480, 480),
    );

    Sprite saria4 = Sprite(
      image,
      srcPosition: Vector2(480 * 3, 0),
      srcSize: Vector2(480, 480),
    );

   a = SpriteAnimationTicker(
        SpriteAnimation.spriteList([saria, saria2, saria3, saria4], stepTime: 0.5));
  }

  @override
  void render(Canvas canvas) {
    a.getSprite().render(canvas, size: tamanho);
  }

  @override
  void update(double dt) {
    a.update(dt);
  }
}
