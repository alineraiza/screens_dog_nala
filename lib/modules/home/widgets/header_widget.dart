import 'package:challenge_2/challenge_ui/theme/assets/challenge_assets.dart';
import 'package:challenge_2/challenge_ui/theme/fonts/text_styles/challenge_text_styles.dart';
import 'package:flutter/material.dart';

//TODO(Aline): USAR COMO APPBAR.
class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final double size;
  const HeaderWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width * 0.998,
      child: AppBar(
        elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.069,),
            child: const Icon(
              Icons.menu_rounded,
              size: 35,
            ),
          ),
          title: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.042, 
                  ),
                child: Text('Location', style: ChallengeTextStyles.bodyLarge),
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.072, 
                ),
                child: Text(
                  'Cameron St., Boston',
                  style: ChallengeTextStyles.titleLarge,
                ),
              ),
            ],
          ),
          actions: const [
            CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(ChallengeAssets.lisa),
            ),
          ],),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(size);
  
}
