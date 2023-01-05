import 'package:flutter/material.dart';

class FilterAnimalsWidget extends StatelessWidget {
  final String? title;
  final Widget icon;

  const FilterAnimalsWidget({
    super.key,
    this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Theme.of(context).colorScheme.onSecondary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            icon,
            const SizedBox(width: 12,),
            if (title != null)
              Text(
                title!,
                style: Theme.of(context).textTheme.titleMedium,
              )
          ],
        ),
      ),
    );
  }
}
