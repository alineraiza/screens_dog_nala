import 'package:challenge_2/challenge_ui/theme/assets/challenge_assets.dart';
import 'package:challenge_2/challenge_ui/theme/colors/challenge_colors.dart';
import 'package:challenge_2/modules/details_animal/widgets/featured_image_widget.dart';
import 'package:challenge_2/modules/details_animal/widgets/image_animal_widget.dart';
import 'package:flutter/material.dart';

class ContainerImageAnimalWidget extends StatelessWidget {
  const ContainerImageAnimalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          const Positioned(
            left: 145,
            child: FeaturedImageWidget(
              bigImage: Image(
                width: 600,
                height: 600,
                image: AssetImage(
                  ChallengeAssets.nalaFive,
                ),
              ),
              backGroundBigImage: ChallengeColors.orange,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.040),
            child: const ImageAnimalWidget(
              listImage: [
                ChallengeAssets.nalaOne,
                ChallengeAssets.nalaTwo,
                ChallengeAssets.nalaThree,
                ChallengeAssets.nalaFour,
                ChallengeAssets.nalaFive,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
