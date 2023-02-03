import 'package:flutter/material.dart';

class ImageAnimalWidget extends StatelessWidget {
  final List<String> listImage;

  const ImageAnimalWidget({
    super.key,
    required this.listImage,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    
    return SizedBox(
      height: 390,
      width: 120,
      child: Stack(
        children:[ 
          ListView.separated(
          padding: EdgeInsets.all(size.width * 0.042),
          itemCount: listImage.length,
          separatorBuilder: (BuildContext context, int index) { 
            return SizedBox(height: size.width * 0.045,);
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
          top: 330,
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
    );
  }
}
