import 'package:challenge_2/challenge_ui/theme/assets/challenge_assets.dart';
import 'package:challenge_2/challenge_ui/theme/colors/challenge_colors.dart';
import 'package:challenge_2/models/card_animal_model.dart';
import 'package:challenge_2/modules/details_animal/details_animal_page.dart';
import 'package:challenge_2/modules/home/widgets/card_animal_button_widget.dart';
import 'package:flutter/material.dart';

class CardAnimalWidget extends StatelessWidget {
  const CardAnimalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height - 200,
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
      name: 'Nala Sonolenta',
      day: 'Humana me deixa',
      details: 'Female, 2 years old',
      km: 'Sala',
      image: const Image(
        image: AssetImage(
          ChallengeAssets.nalaThree,
        ),
      ),
      backgroundColorImage: ChallengeColors.greenWater,
      id: 0,
    ),
    CardAnimalModel(
      name: 'Nala Arteira ',
      day: 'Roubou a pelucia',
      details: 'Female, 2 years old',
      km: 'Quarto',
      image: const Image(
        image: AssetImage(
          ChallengeAssets.nalaOne,
        ),
      ),
      backgroundColorImage: ChallengeColors.white,
      id: 1,
    ),
    CardAnimalModel(
      name: 'Nala Juíza',
      day: 'Humana pra que isso?',
      details: 'Female, 2 years old',
      km: 'Cozinha',
      image: const Image(
        image: AssetImage(
          ChallengeAssets.nalaTwo,
        ),
      ),
      backgroundColorImage: ChallengeColors.yellow,
      id: 3,
    ),
    CardAnimalModel(
      name: 'Nala de Graça',
      day: 'Quase sexta Feira',
      details: 'Female, 2 years old',
      km: 'Jardim',
      image: const Image(
        image: AssetImage(
          ChallengeAssets.nalaFour,
        ),
      ),
      backgroundColorImage: ChallengeColors.blue,
      id: 2,
    ),
    CardAnimalModel(
      name: 'Nala Modelany',
      day: 'Sexta né bb',
      details: 'Female, 2 years old',
      km: 'Parede de fotos',
      image: const Image(
        image: AssetImage(
          ChallengeAssets.nalaFive,
        ),
      ),
      backgroundColorImage: ChallengeColors.orange,
      id: 4,
    ),
  ];
}
