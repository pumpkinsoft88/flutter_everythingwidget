import 'package:flutter/material.dart';

import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  final String author = 'Mike Katz';
  final String coffeeType = 'Smoothie Connoisseur';
  final String type = 'Smoothie';
  final String recipe = 'Recipe';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(width: 350, height: 450),
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              const AuthorCard(
                authorName: 'Mike Katz',
                title: 'Smoothie Connoisseur',
                imageProvider: AssetImage('assets/author_katz.jpeg'),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Smoothie',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                    ),
                    Text('Recipe', style: Theme.of(context).textTheme.headline1)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}


// Stack(children: [
//           Positioned(
//             left: 30,
//             child: Text(
//               author,
//               style: FooderlichTheme.lightTextTheme.headline5,
//             ),
//           ),
//           Positioned(
//             left: 30,
//             top: 30,
//             child: Text(
//               coffeeType,
//               style: FooderlichTheme.lightTextTheme.headline6,
//             ),
//           ),
//           Positioned(
//             bottom: 30,
//             child: Text(
//               type,
//               style: FooderlichTheme.lightTextTheme.headline5,
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             right: 0,
//             child: Text(
//               recipe,
//               style: FooderlichTheme.lightTextTheme.headline5,
//             ),
//           ),
//         ]),