import 'package:challenge_2/challenge_ui/theme/assets/challenge_assets.dart';
import 'package:challenge_2/challenge_ui/theme/colors/challenge_colors.dart';
import 'package:challenge_2/modules/details_animal/widgets/featured_image_widget.dart';
import 'package:challenge_2/modules/details_animal/widgets/header_details_animal_widget.dart';
import 'package:challenge_2/modules/details_animal/widgets/image_animal_widget.dart';
import 'package:challenge_2/modules/home/home_page.dart';
import 'package:flutter/material.dart';

class DetailsAnimalPage extends StatefulWidget {
  const DetailsAnimalPage({super.key});

  @override
  State<DetailsAnimalPage> createState() => _DetailsAnimalPageState();
}

class _DetailsAnimalPageState extends State<DetailsAnimalPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme.colorScheme.primary,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: theme.colorScheme.onTertiary,
          ),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: theme.colorScheme.secondary.withOpacity(0.2),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: theme.colorScheme.secondary,
                    size: 35,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderDetailsAnimalWidget(
              name: 'Sparky',
              breed: 'Golden Retiever',
              genreIcon: Icon(
                Icons.male,
                color: theme.colorScheme.onPrimary,
                size: 35,
              ),
              km: '2.5 kms away',
              years: '8 months old',
            ),
            Stack(
              children: const [
                FeaturedImageWidget(
                  bigImage: Image(
                    image: AssetImage(
                      ChallengeAssets.backGroundLightYellow,
                    ),
                  ),
                  backGroundBigImage: ChallengeColors.yellow,
                ),
                ImageAnimalWidget(
                  imageOne: Image(
                    image: AssetImage(
                      ChallengeAssets.imageOne,
                    ),
                  ),
                  imageTwo: Image(
                    image: AssetImage(
                      ChallengeAssets.imageTwo,
                    ),
                  ),
                  imageThree: Image(
                    image: AssetImage(
                      ChallengeAssets.imageThree,
                    ),
                  ),
                  imageFour: Image(
                    image: AssetImage(
                      ChallengeAssets.imageFour,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: theme.textTheme.headlineSmall,
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing, '
                    'and typesetting industry. Lorem Ipsum has been the '
                    'industrys standard dummy text ever since the 1500s, when '
                    'an unknown printer took a galley of type and scrambled it '
                    'to make a type specimen book. It has survived not only '
                    'five centuries, but also the leap into electronic '
                    'typesetting, remaining essentially unchanged. It was '
                    'popularised in the 1960s with the release of Letraset '
                    'sheets containing Lorem Ipsum passages, and more recently '
                    'with desktop publishing software like Aldus PageMaker '
                    'including versions of Lorem Ipsum',
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            // TODO(Aline): Componentizar botão.
            Padding(
              padding: const EdgeInsets.only(left: 230, top: 10),
              child: Container(
                height: 90,
                width: 190,
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.pets,
                      color: theme.colorScheme.primary,
                      size: 30,
                    ),
                    Text(
                      'ADOPT',
                      style: theme.textTheme.bodyMedium,
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
