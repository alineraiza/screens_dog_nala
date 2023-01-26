import 'package:flutter/material.dart';

class ImageAnimalWidget extends StatelessWidget {
  final List<String> listImage;

  const ImageAnimalWidget({
    super.key,
    required this.listImage,
  });

  // TODO(Aline): Usar uma lista, bildando automaticamente.
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: SizedBox(
        height: 300,
        width: 120,
        child: Stack(
          children:[ 
            ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: listImage.length,
            separatorBuilder: (BuildContext context, int index) { 
              return const SizedBox(height: 16,);
             },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: theme.colorScheme.surface,
                  border: Border.all(
                    width: 2,
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
                height: 80,
                width: 80,
                child: Image(
                  image: AssetImage(
                    listImage[index],
                  ),
                ),
              );
            }, 
          ),
          Positioned(
            top: 260,
            left: 10,
            child: Container(
                height: 80,
                width: 100,
                decoration:  const BoxDecoration(
                  gradient:  LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color> [
                      Color.fromARGB(0, 255, 255, 255),
                      Color.fromARGB(255, 255, 254, 254),
                      Color.fromARGB(220, 250, 243, 243),
                    ],
                  ),
                ),
              ),
          ),
        ],),
      ),
    );
  }
}
