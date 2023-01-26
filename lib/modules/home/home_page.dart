import 'package:challenge_2/modules/home/widgets/cards_animal_widget.dart';
import 'package:challenge_2/modules/home/widgets/filter_animals_widget.dart';
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
        height: 800,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          color: Theme.of(context).colorScheme.tertiary,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  left: 12,
                ),
                child: FilterAnimalWidget(),
              ),
              SizedBox(
                height: 20,
              ),
              CardsAnimalWidget()
            ],
          ),
        ),
      ),
    );
  }
}
