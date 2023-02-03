import 'package:challenge_2/modules/details_animal/widgets/container_image_animal_widget.dart';
import 'package:challenge_2/modules/details_animal/widgets/header_details_animal_widget.dart';
import 'package:challenge_2/modules/home/home_page.dart';
import 'package:flutter/material.dart';

class DetailsAnimalPage extends StatefulWidget {
  const DetailsAnimalPage({super.key});

  @override
  State<DetailsAnimalPage> createState() => _DetailsAnimalPageState();
}

class _DetailsAnimalPageState extends State<DetailsAnimalPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme.colorScheme.primary,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: theme.colorScheme.onTertiary,
          ),
        ),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: size.width * 0.066),
              child: Container(
                height: size.width * 0.120,
                width: size.width * 0.120,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: theme.colorScheme.secondary.withOpacity(0.2),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: theme.colorScheme.secondary,
                    size: 35,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: theme.colorScheme.primary,
          child: Column(
            children: [
              HeaderDetailsAnimalWidget(
                name: 'Nala Modelany',
                breed: 'Vira-lata',
                genreIcon: Icon(
                  Icons.male,
                  color: theme.colorScheme.onPrimary,
                  size: 45,
                ),
                km: '2.5 kms away',
                years: '2 years old',
              ),
              const ContainerImageAnimalWidget(),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(
                      height: size.width * 0.021,
                    ),
                    Text(
                      'Doggo ipsum long doggo tungg long bois very good spot, '
                      'Noodle horse long bois very hand that feed shibe '
                      'you are doing me the shock doggorino puggo length '
                      'an unknown printer took a galley of type and scrambled it'
                      'Doggo wow such tempt lotsa pats  nice floof very taste '
                      'five centuries, but also the leap into electronic '
                      'typesetting, remaining essentially unchanged. It was '
                      'popularised in the 1960s with the release of Letraset '
                      'sheets containing Lorem Ipsum passages, and more recently'
                      'with desktop publishing software like Aldus PageMaker '
                      'including versions of Lorem Ipsum',
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.476,
                ),
                child: Container(
                  height: size.width * 0.213,
                  width: size.width * 0.80,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.042,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.pets,
                          color: theme.colorScheme.primary,
                          size: 25,
                        ),
                        SizedBox(
                          width: size.width * 0.04,
                        ),
                        Text(
                          'Amar doguinho',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
