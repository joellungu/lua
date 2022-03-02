//
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'login.dart';

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
        loop: false,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
              color: Colors.grey, activeColor: Color(0xff38547C)),
        ),
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(15),
            child: Center(
              child: Text(
                """Cillum amet aute occaecat culpa tempor. Est dolore enim velit officia elit anim et laborum elit. Magna reprehenderit labore reprehenderit pariatur nostrud et amet.""",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Center(
              child: Text(
                """Enim eu elit esse cillum sunt irure Lorem ad enim pariatur voluptate cupidatat. Reprehenderit nisi nisi esse ad irure ad. Duis Lorem ullamco commodo esse voluptate deserunt reprehenderit tempor. Consectetur voluptate esse adipisicing nisi labore aliqua deserunt nostrud fugiat. Nulla ex labore cillum culpa pariatur occaecat eu ad commodo sunt aute labore anim. Excepteur exercitation dolor labore reprehenderit mollit amet est pariatur. Duis aliquip aliqua dolore culpa nulla.""",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  """Laboris mollit aute culpa proident eiusmod aliqua culpa aute non Lorem. Cupidatat excepteur ullamco adipisicing consequat ex occaecat id pariatur deserunt dolore ad reprehenderit officia. Magna adipisicing proident voluptate dolore aliqua anim ipsum sunt qui. Dolore commodo enim duis consequat ad esse anim sint ullamco laborum ipsum.""",
                  textAlign: TextAlign.center,
                ),
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
