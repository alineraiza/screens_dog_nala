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
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(600)),
        color: backGroundBigImage,
      ),
      height: 350,
      width: 350,
      child: bigImage,
    );
  }
}
