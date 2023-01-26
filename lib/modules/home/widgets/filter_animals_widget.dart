import 'package:challenge_2/models/filter_animal_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'filter_animals_button_widget.dart';

class FilterAnimalWidget extends StatelessWidget {

  const FilterAnimalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      height: 45,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: FilterAnimalMock.filterAnimals.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                  ),
                  child: FilterAnimalsButtonWidget(
                    filterAnimalsModel: FilterAnimalMock.filterAnimals[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FilterAnimalMock {
  static List<FilterAnimalModel>  filterAnimals = [
    FilterAnimalModel(id: 0, icon: const FaIcon(FontAwesomeIcons.filter)),
    FilterAnimalModel(id: 1, icon: const FaIcon(FontAwesomeIcons.dog), title: 'Dogs'),
    FilterAnimalModel(id: 2, icon:const FaIcon(FontAwesomeIcons.cat), title: 'Cats'),
    FilterAnimalModel(id: 3, icon: const FaIcon(FontAwesomeIcons.crow), title: 'Birds'),
    FilterAnimalModel(id: 4, icon: const FaIcon(FontAwesomeIcons.hippo), title: 'Hippo'),
  ];
}
