import 'package:challenge_2/challenge_ui/theme/assets/challenge_assets.dart';
import 'package:challenge_2/challenge_ui/theme/colors/challenge_colors.dart';
import 'package:challenge_2/models/card_animal_model.dart';
import 'package:challenge_2/modules/details_animal/details_animal_page.dart';
import 'package:challenge_2/modules/home/widgets/cards_animals_button_widget.dart';
import 'package:flutter/material.dart';

class CardsAnimalWidget extends StatelessWidget {
  const CardsAnimalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: CardsAnimalMock.cardAnimals.length,
              (context, index) {
                return CardAnimalButtonWidget(
                  cardAnimalModel: CardsAnimalMock.cardAnimals[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsAnimalPage(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
class CardsAnimalMock {
  static List<CardAnimalModel> cardAnimals = [
    CardAnimalModel(
      name: 'Sparky',
      breed: 'Golden Retriever',
      details: 'Female, 8 months old',
      km: '2.5 kms away',
      image: const Image(
        image: AssetImage(
          ChallengeAssets.imageThree,
        ),
      ),
      backgroundColorImage: ChallengeColors.yellow,
      id: 0,
    ),
    CardAnimalModel(
      name: 'Nala',
      breed: 'Vira lata',
      details: 'Female, 2 years old',
      km: '2.9 kms away',
      image: const Image(
        image: AssetImage(
          ChallengeAssets.backGroundWhite,
        ),
      ),
      backgroundColorImage: ChallengeColors.white,
      id: 1,
    ),
    CardAnimalModel(
      name: 'Charlie',
      breed: 'Boston Terrier',
      details: 'Male, 1.5 years old',
      km: '2.6 kms away',
      image: const Image(
        image: AssetImage(
          ChallengeAssets.backGroundLightGreen,
        ),
      ),
      backgroundColorImage: ChallengeColors.greenWater,
      id: 2,
    ),
    CardAnimalModel(
      name: 'Max',
      breed: 'Siberian Husky',
      details: 'Male, 1 years old',
      km: '2.9 kms away',
      image: const Image(
        image: AssetImage(
          ChallengeAssets.backGroundBlue,
        ),
      ),
      backgroundColorImage: ChallengeColors.blue,
      id: 03,
    ),
    CardAnimalModel(
        name: 'Daisy',
        breed: 'Maltese',
        details: 'Female, 7 months old',
        km: '2.9 kms away',
        image: const Image(
          image: AssetImage(
            ChallengeAssets.backGroundPink,
          ),
        ),
        backgroundColorImage: ChallengeColors.orange,
        id: 04,)
  ];
}
