import 'package:challenge_2/challenge_ui/theme/fonts/text_styles/challenge_text_styles.dart';
import 'package:flutter/material.dart';

class CardsAnimalsWidget extends StatefulWidget {
  final Image image;
  final Color backgroundColorImage;
  final String name;
  final String breed;
  final String details;
  final String km;

  const CardsAnimalsWidget(
      {super.key,
      required this.image,
      required this.backgroundColorImage,
      required this.name,
      required this.breed,
      required this.details,
      required this.km});

  @override
  State<CardsAnimalsWidget> createState() => _CardsAnimalsWidgetState();
}

class _CardsAnimalsWidgetState extends State<CardsAnimalsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(21)),
        color: Theme.of(context).colorScheme.onSecondary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
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
            const SizedBox(width: 37,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.name, style: ChallengeTextStyles.headlineSmall),
                    const SizedBox(width: 55,),
                    Icon(Icons.favorite, size: 32, color: Theme.of(context).colorScheme.secondary,)
                  ],
                ), 
                Text(widget.breed, style: ChallengeTextStyles.titleMedium,), 
                Text(widget.details, style: ChallengeTextStyles.bodyLarge,),
                const SizedBox(height: 20,),
                Row(children: [
                  Icon(Icons.room, size: 18, color: Theme.of(context).colorScheme.secondary,),
                  Text(widget.km, style: ChallengeTextStyles.titleSmall,)
                ],)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
