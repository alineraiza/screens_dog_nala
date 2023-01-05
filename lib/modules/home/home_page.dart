import 'package:challenge_2/challenge_ui/theme/assets/challenge_assets.dart';
import 'package:challenge_2/challenge_ui/theme/colors/challenge_colors.dart';
import 'package:challenge_2/modules/home/widgets/cards_animals_widget.dart';
import 'package:challenge_2/modules/home/widgets/filter_animals_widget.dart';
import 'package:challenge_2/modules/home/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO(Aline): Usar a appBar (header).
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(),
            Container(
              alignment: Alignment.bottomCenter,
              height: 550,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(30)),
                color: Theme.of(context).colorScheme.tertiary,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 60,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.center,
                              width: 500,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  FilterAnimalsWidget(
                                    icon: FaIcon(FontAwesomeIcons.filter),
                                  ),
                                  FilterAnimalsWidget(
                                    title: 'Dogs',
                                    icon: FaIcon(FontAwesomeIcons.dog),
                                  ),
                                  FilterAnimalsWidget(
                                    title: 'Cats',
                                    icon: FaIcon(FontAwesomeIcons.cat),
                                  ),
                                  FilterAnimalsWidget(
                                    title: 'Birds',
                                    icon: FaIcon(FontAwesomeIcons.crow),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return Container(
                            alignment: Alignment.center,
                            height: 890,
                            child: Column(
                              children: const [
                                CardAnimalWidget(
                                  name: 'Sparky',
                                  breed: 'Golden Retriever',
                                  details: 'Female, 8 months old',
                                  km: '2.5 kms away',
                                  image: Image(
                                    image:
                                        ChallengeAssets.backGroundLightYellow,
                                  ),
                                  backgroundColorImage: ChallengeColors.yellow,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CardAnimalWidget(
                                  name: 'Nala',
                                  breed: 'Vira lata',
                                  details: 'Female, 2 years old',
                                  km: '2.9 kms away',
                                  image: Image(
                                      image: ChallengeAssets.backGroundWhite,),
                                  backgroundColorImage: ChallengeColors.white,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CardAnimalWidget(
                                  name: 'Charlie',
                                  breed: 'Boston Terrier',
                                  details: 'Male, 1.5 years old',
                                  km: '2.6 kms away',
                                  image: Image(
                                    image: ChallengeAssets.backGroundLightGreen,
                                  ),
                                  backgroundColorImage:
                                      ChallengeColors.greenWater,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CardAnimalWidget(
                                  name: 'Max',
                                  breed: 'Siberian Husky',
                                  details: 'Male, 1 years old',
                                  km: '2.9 kms away',
                                  image: Image(
                                      image: ChallengeAssets.backGroundBlue,),
                                  backgroundColorImage: ChallengeColors.blue,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CardAnimalWidget(
                                  name: 'Daisy',
                                  breed: 'Maltese',
                                  details: 'Female, 7 months old',
                                  km: '2.9 kms away',
                                  image: Image(
                                      image: ChallengeAssets.backGroundPink,),
                                  backgroundColorImage: ChallengeColors.orange,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          );
                        },
                        childCount: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
