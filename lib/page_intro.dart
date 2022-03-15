//
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'preinscription.dart';

class PageIntro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageIntro();
  }
}

class _PageIntro extends State<PageIntro> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper.children(
        //controller: controller,
        //allowImplicitScrolling: true,
        indicatorLayout: PageIndicatorLayout.SLIDE,
        loop: false,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
              color: Colors.grey, activeColor: Color(0xff38547C)),
        ),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: ListView(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              children: [
                Container(
                  height: 0,
                  width: 0,
                  child: Image.asset(
                    "assets/recteur.gif",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Mot du recteur",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  """
Bien chers / chères  internautes, en ouvrant ce lien de notre site internet, vous nous permettez de vous accueillir chez nous (site) à partir de chez vous (où que vous vous trouviez), ce dont nous vous remercions d’une part et vous souhaitons la bienvenue d’autre part.

Ceux qui observent le temps passer sans rien faire, passent avec le temps sans rien accomplir. Cependant, ceux qui saisissent les opportunités pour se développer, deviennent à leur tour des acteurs incontournables de développement de leur environnement.

Pour ne pas vous faire perdre votre précieux temps, permettez-moi de progresser pour vous édifier sur les raisons de l’existence de Leadership Academia University:

Premièrement, nous avons constaté que plusieurs compatriotes vendent leurs propriétés et voir même l’héritage familiale pour réunir les moyens financiers pouvant leur permettre d’étudier ou de faire étudier leurs enfants à l’étranger.

Deuxièmement, nous sommes tous témoins des progrès de la technologie qui a entrainé une sorte de révolution dans le monde de travail et de l’éducation. Jadis, on devait se déplacer de chez soi pour aller au travail. On devait quitter la maison pour aller étudier. Aujourd’hui certaines personnes ne sont plus obligées de se déplacer pour servir ou obtenir des services. La technologie apporte les cours à la maison et les bibliothèques dans les poches des individus. Le temps que le monde entier traverse sous cette pandémie dangereuse est suffisant pour nous en convaincre d’avantage.

Troisièmement, il y a plusieurs personnes qui désirent renforcer leur niveau d’études pendant qu’ils travaillent. Ils ont besoin d’utiliser les heures en dehors de service pour étudier mais se trouvent devant un système qui les obligent à passer du matin au soir dans des auditoires. Il leur faut donc un système adapté  à leur emploi de temps.

Enfin, la jeunesse d’aujourd’hui a besoin d’emboîter les pas des autres jeunes étudiants du monde entier qui évoluent déjà dans un système LMD qui peut permettre à un jeune de 18 ans, détenteur d’un bac ou d’un diplôme d’état, d’avoir son master et son doctorat dans un programme d’études de 8 à 10 ans maximum selon les disciplines choisies. Ceci n’est possible que dans les institutions qui offrent ce programme dont la reconnaissance est mondiale.""",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    "assets/LOGO PNG.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Text(
                  """Laboris mollit aute culpa proident eiusmod aliqua culpa aute non Lorem. Cupidatat excepteur ullamco adipisicing consequat ex occaecat id pariatur deserunt dolore ad reprehenderit officia. Magna adipisicing proident voluptate dolore aliqua anim ipsum sunt qui. Dolore commodo enim duis consequat ad esse anim sint ullamco laborum ipsum.""",
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) {
                                return Login();
                              },
                            ),
                          );
                        },
                        child: const Text("S'authentifier"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) {
                                return PreInscription();
                              },
                            ),
                          );
                        },
                        child: const Text("Ce preinscrire"),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
