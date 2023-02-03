import 'package:challenge_2/models/filter_animal_model.dart';
import 'package:flutter/material.dart';

class FilterAnimalsButtonWidget extends StatefulWidget {
  final FilterAnimalModel filterAnimalsModel;

  const FilterAnimalsButtonWidget({
    super.key,
    required this.filterAnimalsModel,
  });

  @override
  State<FilterAnimalsButtonWidget> createState() =>
      _FilterAnimalsButtonWidgetState();
}

class _FilterAnimalsButtonWidgetState extends State<FilterAnimalsButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        setState(() {
          widget.filterAnimalsModel.isSelected =
              !widget.filterAnimalsModel.isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.036),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: widget.filterAnimalsModel.isSelected
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.onSecondary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.filterAnimalsModel.icon,
            if (widget.filterAnimalsModel.title != null) ...{
              SizedBox(
                width: size.width * 0.032,
              ),
              Text(
                widget.filterAnimalsModel.title!,
                style: widget.filterAnimalsModel.isSelected
                    ? Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Theme.of(context).colorScheme.primary)
                    : Theme.of(context).textTheme.titleMedium!,
              ),
            }
          ],
        ),
      ),
    );
  }
}
