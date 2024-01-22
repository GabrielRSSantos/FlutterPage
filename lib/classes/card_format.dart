class CardSkillFormat {
  String? image;
  String? title;
  String? subtitle;

  CardSkillFormat({this.image, this.title, this.subtitle});
}

class CardExperienciaFormat {
  String? title;
  List<Map<String, dynamic>>? lista = [
    {"topico": '', "descricaoTopico": []}
  ];

  CardExperienciaFormat({this.title, this.lista});
}

final List<CardSkillFormat> listOfCardsSkills = [
  CardSkillFormat(
    image: "assets/images/htmlcss.jpg",
    title: "HTML / CSS",
    subtitle: "Essencial para qualquer programador",
  ),
  CardSkillFormat(
    image: "assets/images/JavaScript.png",
    title: "Javascript",
    subtitle:
        "Foi a primeira linguagem que eu utilizei, aprendi muito sobre ela no bootcamp e atualmente continuo atuando com ela no meu trabalho",
  ),
  CardSkillFormat(
    image: "assets/images/ReactNative.png",
    title: "React Native",
    subtitle:
        "Após obter mais expeciência com Javascript, o primeiro framework que utilizei foi o React Native.",
  ),
  CardSkillFormat(
    image: "assets/images/flutterdart.jpg",
    title: "Dart / Flutter",
    subtitle:
        "Essa foi a tecnologia na qual me apaixonei, aprendi dart e flutter no bootcamp, gosto de usar ela como hobbie, mas gostaria de trabalhar com ela algum dia",
  ),
  CardSkillFormat(
    image: "assets/images/godot.png",
    title: "Godot",
    subtitle:
        "Godot é uma game engine que utiliza GDScript como principal linguagem, mas também pode ser programada em C#. É onde eu mais passo tempo programando, onde consigo conciliar duas coisas que eu mais gosto, programar e jogar ",
  ),
  CardSkillFormat(
    image: "assets/images/git.png",
    title: "Git",
    subtitle:
        "Todo programador precisa aprender versionar código, então tenho entendimento fundamental sobre",
  ),
  CardSkillFormat(
    image: "assets/images/c.jpg",
    title: "C / C++",
    subtitle:
        "Foi um grande desafio para mim precisar aprender C++, em meu primeiro emprego precisei me familiarizar com a linguagem pois o sistema é legado e grande parte é desenvolvida em cima dessa linguagem",
  ),
  CardSkillFormat(
    image: "assets/images/csharp.png",
    title: "C#",
    subtitle:
        "Minha linguage favorita, atualmente atuo com ela no meu trabalho, gosto de desenvolver com ela pela facilidade e flexibilidade da linguagem.",
  ),
  CardSkillFormat(
    image: "assets/images/java.png",
    title: "Java",
    subtitle:
        "Ja trabalhei com ela na faculdade e nos meus primeiros passos com linguagem orientada a objetos, fiz jogos e alguns app utilizando Spring Boot.",
  ),
  CardSkillFormat(
    image: "assets/images/python.png",
    title: "Python",
    subtitle:
        "Utilizei python pela curiosidade, achei muito intuitiva e facil de entender.",
  ),
];

final List<CardExperienciaFormat> listOfCardsExpeciencia = [
  CardExperienciaFormat(
    title: "Experiencias",
    lista: [
      {
        "topico": "Analista de soluções II - Capgemini",
        "descricaoTopico": [
          "•	Analise e correção de bug do sistema utilizando C/C++, C#, .Net, JavaScript e XML",
          "•	Criar pacotes para atualizar o sistema corrigido - (Jira, GitFlow)",
          "•	Criar relatórios para atualizar o progresso realizado do ticket (Inglês)",
          "•	Método misto Scrum/Kanban, atendendo os principios SOLID implementando código  utilizando design pattens."
        ]
      },
      {
        "topico": "Workana - Freelancer",
        "descricaoTopico": [
          "•	Cookie (2023) - Criar um sistema utilizando vite(Javascript/React), em que foi proposto o back-end integrado com front para cadastro, com requisição http para comunicar com impressoras 3D, com monitoramento real-time e tabelas.",
          "•	Fiep Paraná (2023)  - Criar um programa em C# (Windows forms) para um totem, em que foi solicitado rodar um vídeo ao clicar em uma determinada foto."
        ]
      }
    ],
  ),
  CardExperienciaFormat(
    title: "Formação e Cursos",
    lista: [
      {
        "topico": "Analista e Desenvolvimento de Sistemas",
        "descricaoTopico": [
          "•	Curso superior em Analise e Desenvolvimento de Sistemas",
        ]
      },
      {
        "topico": "Bootcamp - Desenvolvedor Front-End Mobile",
        "descricaoTopico": [
          "•	Bootcamp voltado para criar aplicativos para mobile Android e IOS.",
          "•	Utilizamos React Native e Flutter para criação de aplicativos.",
          "•	Ao final do curso, desenvolvemos um aplicativo funcional para o grupo TNT de entrega e retirada de pedidos.",
        ]
      }
    ],
  ),
];
