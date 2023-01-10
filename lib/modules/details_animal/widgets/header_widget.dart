import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  String name;
  String breed;
  Widget genreIcon;
  String km;
  String years; 

  HeaderWidget({super.key, 
    required this.name,
    required this.breed,
    required this.genreIcon,
    required this.km,
    required this.years
  });

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.name),
            widget.genreIcon
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.breed),
            Text(widget.years)
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              const Icon(Icons.room),
              Text(widget.km)
            ],
          ),
        )

      ],
    );
  }
}