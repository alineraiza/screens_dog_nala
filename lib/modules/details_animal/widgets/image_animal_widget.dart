import 'package:flutter/material.dart';

class ImageAnimalWidget extends StatelessWidget {
  final Image imageOne;
  final Image imageTwo;
  final Image imageThree;
  final Image imageFour;
  final Image bigImage;
  final Color backGroundBigImage;

  const ImageAnimalWidget({super.key,
    required this.imageOne, 
    required this.imageTwo, 
    required this.imageThree, 
    required this.imageFour, 
    required this.bigImage, 
    required this.backGroundBigImage
  });

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    return Row(
      children: [
        Column(
          children: [
            Container(
              color: theme.colorScheme.surface,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 50,
              width: 50,
              child: imageOne,
            ),
            Container(
              color: theme.colorScheme.surface,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 50,
              width: 50,
              child: imageTwo,
            ),
            Container(
              color: theme.colorScheme.surface,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 50,
              width: 50,
              child: imageThree,
            ),
            Container(
              color: theme.colorScheme.surface,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              height: 50,
              width: 50,
              child: imageFour,
            ),
          ],
        ),
        Container(
          color: backGroundBigImage,
          height: 100,
          width: 80,
          child: bigImage,
        ),
      ],
    );
  }
}