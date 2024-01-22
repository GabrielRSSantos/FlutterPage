import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: const Center(
                child: Text(
                  "Bem vindo(a) ao meu Portifolio",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image(
                    height: MediaQuery.of(context).size.height * 0.2,
                    image: AssetImage("assets/images/GabrielGif.gif"),
                  ),
                ),
                Flexible(
                  child: Image(
                    height: MediaQuery.of(context).size.height * 0.2,
                    image: AssetImage("assets/images/SariaGif.gif"),
                  ),
                ),
              ],
            ),
            //const CarouselChangeReasonDemo(),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                """
                Ola, esse da esquerda sou eu, Gabriel, e essa do meu lado direito é minha linda esposa, Saria. 
                Sejam muito bem vindo(a) ao meu Portifólio.
                O objetivo com esse portifólio é me apresentar um pouco e mostrar minhas habilidades e skills de uma forma mais prática e visivel
                Estou sempre buscando novas oportunidades de trabalho e desafios, então se você gostou de alguma habilidade ou skill e queira me conhecer melhor seria um prazer!
                """,
              ),
            )
          ],
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'assets/images/Gabriel_Saria.jpeg',
  'assets/images/Gabriel_Saria.jpeg',
  'assets/images/Gabriel_Saria.jpeg',
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => ClipRRect(
        child: Stack(
          children: <Widget>[
            Image.asset(item, fit: BoxFit.cover, width: 1000.0),
          ],
        ),
      ),
    )
    .toList();

class CarouselChangeReasonDemo extends StatefulWidget {
  const CarouselChangeReasonDemo({super.key});

  @override
  State<StatefulWidget> createState() => _CarouselChangeReasonDemoState();
}

class _CarouselChangeReasonDemoState extends State<CarouselChangeReasonDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      color: Colors.amber,
      child: CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
            enlargeCenterPage: true, aspectRatio: 3, viewportFraction: 0.4),
      ),
    );
  }
}
