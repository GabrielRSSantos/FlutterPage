import 'package:flutter/material.dart';
import 'package:myapp/mobile/experiencia.dart';
import 'package:myapp/mobile/skill.dart';
import 'package:myapp/web/portifolio.dart';
import '../mobile/perfil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var globalWidth = MediaQuery.of(context).size.width;

    if (globalWidth < 800) {
      return const NavBarWidget();
    }

    return const Scaffold(
      body: Portifolio(),
    );
  }
}

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
            "assets/images/computer2.jpeg",
            height: MediaQuery.of(context).size.height * 0.95,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: <Widget>[
            const Perfil(),
            const Experiencia(),
            const Skill(),
          ][currentIndex],
          bottomNavigationBar: NavigationBar(
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.account_circle_rounded), label: 'Perfil'),
              NavigationDestination(
                  icon: Icon(Icons.work_history_rounded), label: 'Experiência'),
              NavigationDestination(
                  icon: Icon(Icons.star_rounded), label: 'Skills'),
            ],
            selectedIndex: currentIndex,
            onDestinationSelected: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}
