import 'package:flutter/material.dart';

class HeaderDetailsAnimalWidget extends StatefulWidget {
  final String name;
  final String breed;
  final Widget genreIcon;
  final String km;
  final String years;

  const HeaderDetailsAnimalWidget({
    super.key,
    required this.name,
    required this.breed,
    required this.genreIcon,
    required this.km,
    required this.years,
  });

  @override
  State<HeaderDetailsAnimalWidget> createState() =>
      _HeaderDetailsAnimalWidgetState();
}

class _HeaderDetailsAnimalWidgetState extends State<HeaderDetailsAnimalWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        top: size.width * 0.068,
        left: size.width * 0.054,
        right: size.width * 0.066,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.name, style: theme.textTheme.headlineLarge),
              widget.genreIcon,
            ],
          ),
          SizedBox(height: size.width * 0.032),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.breed,
                style: theme.textTheme.titleMedium,
              ),
              Text(
                widget.years,
                style: theme.textTheme.titleMedium,
              )
            ],
          ),
          SizedBox(
            height: size.width * 0.04,
          ),
          Row(
            children: [
              Icon(
                Icons.room,
                color: theme.colorScheme.secondary,
              ),
              Text(
                widget.km,
                style: theme.textTheme.bodyLarge,
              )
            ],
          )
        ],
      ),
    );
  }
}
