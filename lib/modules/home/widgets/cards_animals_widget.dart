import 'package:challenge_2/challenge_ui/theme/fonts/text_styles/challenge_text_styles.dart';
import 'package:flutter/material.dart';

class CardAnimalWidget extends StatefulWidget {
  final Image image;
  final Color backgroundColorImage;
  final String name;
  final String breed;
  final String details;
  final String km;

  const CardAnimalWidget({
    super.key,
    required this.image,
    required this.backgroundColorImage,
    required this.name,
    required this.breed,
    required this.details,
    required this.km,
  });

  @override
  State<CardAnimalWidget> createState() => _CardAnimalWidgetState();
}

class _CardAnimalWidgetState extends State<CardAnimalWidget> {
  @override
  Widget build(BuildContext context) {
    //TODO(Aline): Usar a variável do theme.
    final theme = Theme.of(context);
    const isFavorite = false;

    return Column(
      children: [
        GestureDetector(
          onTap: () => print('object'),
          child: Container(
            height: 150,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(21)),
              color: theme.colorScheme.onSecondary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      color: widget.backgroundColorImage,
                    ),
                    child: widget.image,
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.name,
                            style: ChallengeTextStyles.headlineSmall,
                          ),
                          IconButton(
                            onPressed: () { 
                              setState(() {
                                isFavorite != isFavorite;
                              });
                             },
                            icon: isFavorite == true
                            ? Icon(Icons.favorite, 
                              color: theme.colorScheme.secondary,)
                            : const Icon(Icons.favorite_border),
                            iconSize: 32,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 75,
                      ),
                      Text(
                        widget.breed,
                        style: ChallengeTextStyles.titleMedium,
                      ),
                      Text(
                        widget.details,
                        style: ChallengeTextStyles.bodyLarge,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.room,
                            size: 18,
                            color: theme.colorScheme.secondary,
                          ),
                          Text(
                            widget.km,
                            style: ChallengeTextStyles.titleSmall,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
