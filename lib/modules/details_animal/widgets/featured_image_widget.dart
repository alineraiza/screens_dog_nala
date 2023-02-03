import 'package:flutter/material.dart';

class FeaturedImageWidget extends StatelessWidget {
  final Image bigImage;
  final Color backGroundBigImage;

  const FeaturedImageWidget({
    super.key,
    required this.bigImage,
    required this.backGroundBigImage,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(600)),
              color: backGroundBigImage,
            ),
            height: size.width * 0.94,
            width: size.width * 0.94,
          ),
        ),
        Positioned(
          top: -90,
          left: -100,
          right: -40,
          child: bigImage,
        )
      ],
    );
  }
}
