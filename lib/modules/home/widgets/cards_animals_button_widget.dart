import 'package:challenge_2/challenge_ui/theme/fonts/text_styles/challenge_text_styles.dart';
import 'package:challenge_2/models/card_animal_model.dart';
import 'package:challenge_2/modules/details_animal/details_animal_page.dart';
import 'package:flutter/material.dart';

class CardAnimalButtonWidget extends StatefulWidget {
  // final Image image;
  // final Color backgroundColorImage;
  // final String name;
  // final String breed;
  // final String details;
  // final String km;
  final Function() onTap;
  final CardAnimalModel cardAnimalModel;

  const CardAnimalButtonWidget({
    super.key, 
    required this.onTap, 
    required this.cardAnimalModel,
    // required this.image,
    // required this.backgroundColorImage,
    // required this.name,
    // required this.breed,
    // required this.details,
    // required this.km,
  });

  @override
  State<CardAnimalButtonWidget> createState() => _CardAnimalButtonWidgetState();
}

class _CardAnimalButtonWidgetState extends State<CardAnimalButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        GestureDetector(
          // onTap: () => Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const DetailsAnimalPage(),
          //   ),
          // ),
          onTap: widget.onTap,
          child: Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 3),
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
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        color: widget.cardAnimalModel.backgroundColorImage,
                      ),
                      child: widget.cardAnimalModel.image,
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 185,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.cardAnimalModel.name,
                                style: ChallengeTextStyles.headlineSmall,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    widget.cardAnimalModel.isFavorite = 
                                    !widget.cardAnimalModel.isFavorite;
                                  });
                                },
                                icon: Icon(
                                  widget.cardAnimalModel.isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: widget.cardAnimalModel.isFavorite
                                      ? theme.colorScheme.secondary
                                      : theme.colorScheme.onTertiary,
                                ),
                                iconSize: 32,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 75,
                        ),
                        Text(
                          widget.cardAnimalModel.breed,
                          //TODO(Aline): Usar Theme;
                          style: ChallengeTextStyles.titleMedium,
                        ),
                        Text(
                          widget.cardAnimalModel.details,
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
                              widget.cardAnimalModel.km,
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
        ),
      ],
    );
  }
}
