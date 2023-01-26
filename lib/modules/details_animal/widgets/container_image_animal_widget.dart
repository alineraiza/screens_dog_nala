import 'package:challenge_2/challenge_ui/theme/assets/challenge_assets.dart';
import 'package:challenge_2/challenge_ui/theme/colors/challenge_colors.dart';
import 'package:challenge_2/modules/details_animal/widgets/featured_image_widget.dart';
import 'package:challenge_2/modules/details_animal/widgets/image_animal_widget.dart';
import 'package:flutter/material.dart';

class ContainerImageAnimalWidget extends StatelessWidget {
  const ContainerImageAnimalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      width: double.infinity,
      child: Stack(
          children: const [
            Positioned(
              left: 120,
              child: FeaturedImageWidget(
                bigImage: Image(
                 width: 1000,
                 height: 1000,
                  image: AssetImage(
                    ChallengeAssets.imageFour,
                  ),
                ),
                backGroundBigImage: ChallengeColors.yellow,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6),
              child: ImageAnimalWidget (
                //TODO(ALINE): Deixar a lista no meu model;
                listImage: [
                  ChallengeAssets.imageOne,
                  ChallengeAssets.imageTwo,
                  ChallengeAssets.imageThree,
                  ChallengeAssets.imageFour,
                ],
              ),
            ),
          ],
        ),
    );
  }
}
