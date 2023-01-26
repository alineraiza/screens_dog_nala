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
    return Stack(
      children:[ 
        Center(
          child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(600)),
            color: backGroundBigImage,
          ),
          height: 380,
          width: 380,
              ),
        ),
      Positioned(
        top: -290,
        left: -70,
        right: -90,
        child: bigImage,
      )
    ],);
  }
}
