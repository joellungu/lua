import 'package:flutter/material.dart';

class Propos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Propos();
  }
}

class _Propos extends State<Propos> with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    //
    controller = TabController(length: 3, vsync: this);
    //
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("À propos"),
        bottom: TabBar(
          isScrollable: false,
          controller: controller,
          indicatorColor: Colors.white,
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.white10,
          ),
          tabs: [
            Tab(
              text: "Qui sommes nous?",
            ),
            Tab(
              text: "VISION GLOBALE & OBJECTIFS GLOBAUX ",
            ),
            Tab(
              text: "NOTRE MANDAT",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          Text.rich(
            TextSpan(
              text:
                  "Nous sommes des Africains Conscients de notre Autorité pour Développer des  Elites  en Modèles  Intègres  et Actifs  (ACADEMIA).  La Conscience  est    notre force,  l'Autorité  scientifique  acquise  par l'éducation  devient notre cheval de bataille, qui fait du Développement des autres  notre vision et des Élites notre premier groupe cible que nous tenons à motiver pour les défier à devenir des Modèles lntègres et Actifs dans leur mission de transformer nos défis en opportunités de développement.",
              children: [
                TextSpan(text: "Quel est notre Credo?"),
                TextSpan(
                    text:
                        "Nous  croyons  en Dieu Créateur de l'univers en général et de l'homme  en particulier, source de toute science. Nous croyons en l'homme comme image et représentant de Dieu, mandaté pour exercer la domination sur toute univers et pour créer à son tour le bien être communautaire. Nous croyons que l'éducation est un instrument divin pour bâtir l'homme et lui communiquer  les  capacités  nécessaires  pour  assumer   sa  destinée   et apporter une contribution effective aux défis qui déstabilisent le bien être dans notre monde. De la qualité de cette éducation  dépendra la qualité des hommes  et des femmes sur  le terrain  d'emploi et de l'effectivité de leur rendement.  Nous  croyons  qu'une  éducation   sanctionnée  par des  titres académiques  accrédités par des institutions compétentes, place les bénéficiaires  dans un avantage incomparable sur le plan des opportunités d'emploi  et aussi sur le retour d'investissement des études. Nous croyons enfin que toute éducation qui vise la création  d'emploi  est prioritaire et mérite un investissement particulier pour la création d'une élite des entrepreneurs pour une société qui lutte contre le chômage."),
                TextSpan(text: "Nos Valeurs Fondamentales"),
                TextSpan(
                    text:
                        """LAU a comme moto :    «  L'Expertise au Service du succès du Leader », Ses  valeurs fondamentales auxquelles doivent souscrire tout membre et agent sont: "Le professionnalisme qui traduit notre capacité et qualité d'experts, au service du succès des leaders".
L'excellence  qui traduit le  standard de notre prestation et le rayonnement de nos actions. Le modèle  qui   incarne   l'intégrité   ainsi   que l'éthique  de la  déontologie  professionnelle  de l'éducation. LAU se veut donc professionnelle, Excellente et Modèle en Intégrité et Éthique de la déontologie exigée aux éducateurs."""),
              ],
            ),
          ),
          Text.rich(
            TextSpan(
              text: "NOTRE VISION GLOBALE",
              children: [
                TextSpan(text: ""),
              ],
            ),
          ),
          Text.rich(TextSpan()),
        ],
      ),
    );
  }
}


/**/

/*
VISION GLOBALE & OBJECTIFS GLOBAUX 
NOTRE VISION GLOBALE
//////////

La vision globale de Leadership Academia University (LAU) est de capaciter les hommes et les femmes, conscients de leur mission sociale, à créer le bien être communautaire et réaliser chacun leur destinée individuelle.                            ·

NOTRE MISSION GLOBALE

La  mission  de LAU  est  de  développer les  élites  et  experts  africains  en modèles intègres et actifs dans tous les secteurs de la vie nationale .

 

NOS OBJECTIFS GLOBAUX

Leadership Academia poursuit les objectifs globaux suivants:

Donner l'opportunité de renforcement de capacité aux leaders qui en expriment le besoin, par une formation universitaire et post universitaire adaptée aux exigences de leurs fonctions.
Assurer la formation post universitaire aux employeurs et employés désireux de relever leurs niveaux académiques pour  être plus compétents et compétitifs dans le marché de l' emploi.
Offrir au monde en général et en Afrique et République Démocratique du Congo en particulier, les  élites  et experts  capables  de participer activement au processus de développement et de la création du bien être communautaire dans leurs milieux respectifs.
Assurer l'éducation universitaire et post universitaire à la jeunesse pour en faire l'élite capable de faire face aux défis de la transformation. sociale.
Favoriser un système éducatif sanctionné par des titres académiques accrédités par les institutions de réputation mondiale.
*/

/*
NOTRE MANDANT
//
NOTRE MANDAT

Leadership  Academia University (LAU) est un Cadre de formation universi­taire et post-­universitaire. Il se veut également une plate­forme d'expression et d'échanges  sur le leadership et un Bureau conseil et mento­rat d'accompagnement des leaders. En sa qualité de cadre de formation, LAU joue le rôle de Trait d'union entre les universités ou institutions étrangères spécialisées dans les techniques modernes de formation post­-universitaires (Distance learning) d'une part; et les jeunes, les cadres et leaders seniors désireux de poursuivre leurs  formations  académiques tout en restant en fonction dans leurs pays, d'autre part.

    1.  PLATE FORME

Leadership Academia University est une  plate­forme d'échanges  sur les réalités  du  monde  de  leadership.  Ces échanges  se feront au  cours  des conférences  débats,  des ateliers et colloques.  Des animateurs internes  et externes de grande renommée sont mis à profits pour conduire ces séances aux quelles sont invités des acteurs tant sociaux, politiques, économiques, qu'ecclésiastiques selon les cas. L'essentiel des débats seront focalisés sur les valeurs  qui  s'imposent dans  la vie  d'un  leader.  Une  revue  intitulée Leadership Pistes publiera les 'Pistes' pour le leadership afin de motiver les leaders à la culture des valeurs de leadership.

      2. BUREAU CONSEIL ET MENTORAT :

Leadership Academia University offrira, aux leaders qui en exprimeront les besoins,  un  service  d'accompagnement assuré par des  mentors  et des coaches dans  l'exercice de leurs fonctions. Il mettra à la disposition  des leaders, les coaches, les mentors et conseillers dans tous les secteurs sur base individuelle, dans le style de 'on-the-job service'.  Le mentor suivra son encadré sur le plan de ses responsabilités sociales, familiales, économiques, politiques, administratives, ecclésiastiques ou autres.

       3.  CADRE DE FORMATION UNIVERSITAIRE ET POST-UNIVERSITAIRE :

Nous savons que notre pays est en voie de révision  du système éducatif actuel. Ainsi, notre contribution est de mettre sur pieds une institution qui aide les compatriotes à accéder aux formations qu'offrent des universités étrangères, notamment :     Buelah  Heights  University  de  Atlanta  (USA), Harvest  Bible  Seminary  de  Melbourne  (Australie),  Atid  International Academy d'lsraël et ITTH de Bangalore en Inde.

Notre intérêt vise surtout les jeunes, les travailleurs, les cadres politiques ainsi que ceux qui évoluent dans le secteur économique.
*/