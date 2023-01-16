import 'package:challenge_2/challenge_ui/theme/fonts/text_styles/challenge_text_styles.dart';
import 'package:challenge_2/modules/details_animal/details_animal_page.dart';
import 'package:flutter/material.dart';

class CardAnimalWidget extends StatefulWidget {
  final Image image;
  final Color backgroundColorImage;
  final String name;
  final String breed;
  final String details;
  final String km;

  const CardAnimalWidget({
    //TODO (Aline): Super.key pesquisar.
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

    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator
          .push(context, MaterialPageRoute(builder: (context) =>
          const DetailsAnimalPage(),),),
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
                    children: [
                      SizedBox(
                        width: 185,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.name,
                              style: ChallengeTextStyles.headlineSmall,
                            ),
                            IconButton(
                              onPressed: () { 
                                setState(() {
                                 
                                });
                               },
                              icon: Icon(Icons.favorite_border, 
                              color: theme.colorScheme.onTertiary ,),
                              iconSize: 32,
                            ),
                          ],
                        ),
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
