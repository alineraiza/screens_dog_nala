import 'package:challenge_2/modules/home/widgets/card_animal_widget.dart';
import 'package:challenge_2/modules/home/widgets/filter_animal_widget.dart';
import 'package:challenge_2/modules/home/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: HeaderWidget(
        size: size.width * 0.280,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          color: Theme.of(context).colorScheme.tertiary,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: size.width * 0.061,
                  left: size.width * 0.074,
                ),
                child: const FilterAnimalWidget(),
              ),
              SizedBox(
                height: size.width * 0.044,
              ),
              const CardAnimalWidget()
            ],
          ),
        ),
      ),
    );
  }
}
