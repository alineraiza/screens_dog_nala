import 'package:challenge_2/modules/details_animal/widgets/featured_image_widget.dart';
import 'package:flutter/material.dart';

class ImageAnimalWidget extends StatelessWidget {
  final Image imageOne;
  final Image imageTwo;
  final Image imageThree;
  final Image imageFour;

  const ImageAnimalWidget({
    super.key,
    required this.imageOne,
    required this.imageTwo,
    required this.imageThree,
    required this.imageFour,
  });

  // TODO(Aline): Usar uma lista, bildando automaticamente.
  // TODO(Aline): Quebrar em 2 widgets.
  // TODO(Aline): issue #5.
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: theme.colorScheme.surface,
            border: Border.all(
              width: 2,
              color: theme.colorScheme.onPrimary,
            ),
          ),
          height: 80,
          width: 80,
          child: imageOne,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: theme.colorScheme.surface,
            border: Border.all(
              width: 2,
              color: theme.colorScheme.onPrimary,
            ),
          ),
          height: 80,
          width: 80,
          child: imageTwo,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: theme.colorScheme.surface,
            border: Border.all(
              width: 2,
              color: theme.colorScheme.onPrimary,
            ),
          ),
          height: 80,
          width: 80,
          child: imageThree,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: theme.colorScheme.surface,
            border: Border.all(
              width: 2,
              color: theme.colorScheme.onPrimary,
            ),
          ),
          height: 80,
          width: 80,
          child: imageFour,
        ),
      ],
    );
  }
}
