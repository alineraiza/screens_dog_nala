import 'package:challenge_2/challenge_ui/theme/assets/challenge_assets.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final double size;
  const HeaderWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width * 0.280,
      child: AppBar(
        toolbarHeight: size.width * 0.216,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.069,
            top: size.width * 0.042,
          ),
          child: const Icon(
            Icons.menu_rounded,
            size: 40,
          ),
        ),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(
              top: size.width * 0.034,
              left: size.width * 0.034,
            ),
            child: Column(
              children: [
                Text(
                  'Location',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'Paraná, Brasil ',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: size.width * 0.074,
            ),
            child: const Center(
              child: CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage(ChallengeAssets.lisa),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size);
}
