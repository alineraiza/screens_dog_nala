import 'package:challenge_2/models/card_animal_model.dart';
import 'package:flutter/material.dart';

class CardAnimalButtonWidget extends StatefulWidget {
  final void Function() onTap;
  final CardAnimalModel cardAnimalModel;

  const CardAnimalButtonWidget({
    super.key,
    required this.onTap,
    required this.cardAnimalModel,
  });

  @override
  State<CardAnimalButtonWidget> createState() => _CardAnimalButtonWidgetState();
}

class _CardAnimalButtonWidgetState extends State<CardAnimalButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Column(
      children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.width * 0.032,
            ),
            child: Container(
              height: size.width * 0.384,
              width: size.width * 0.850,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(21)),
                color: theme.colorScheme.onSecondary,
              ),
              child: Padding(
                padding: EdgeInsets.all(size.width * 0.022),
                child: Row(
                  children: [
                    Container(
                      height: size.width * 0.32,
                      width: size.width * 0.32,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                        color: widget.cardAnimalModel.backgroundColorImage,
                      ),
                      child: widget.cardAnimalModel.image,
                    ),
                    SizedBox(
                      width: size.width * 0.036,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width * 0.450,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.cardAnimalModel.name,
                                style: theme.textTheme.titleLarge,
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
                        Text(
                          widget.cardAnimalModel.day,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(
                          height: size.width * 0.014,
                        ),
                        Text(
                          widget.cardAnimalModel.details,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(
                          height: size.width * 0.045,
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
                              style: theme.textTheme.titleSmall,
                            ),
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
