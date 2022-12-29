import 'package:challenge_2/challenge_ui/theme/assets/challenge_assets.dart';
import 'package:challenge_2/challenge_ui/theme/fonts/text_styles/challenge_text_styles.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu_rounded,
                size: 35,
                // color: 
              ),
              Column(
                children: [
                  Text(
                    'Location',
                    style: ChallengeTextStyles.bodyLarge
                    
                    
                  ),
                  Text(
                    'Cameron St., Boston',
                    style: ChallengeTextStyles.titleLarge,
                  ),
                ],
              ),
              const CircleAvatar(
                radius: 32,
                //TODO: Chamar igual em colors. Não deixar como string;
                backgroundImage: ChallengeAssets.lisa
              ),
            ],
          ),
        ],
      ),
    );
  }
}
